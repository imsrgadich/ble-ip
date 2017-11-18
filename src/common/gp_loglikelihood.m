%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function likelihood = gp_loglikelihood(x,y,options)

likelihood = zeros(size(x,1),1);
parameters = exp(options.parameters);
train_data = options.locations;
reference_map = options.reference_map(:,3:end);

for i = 1:size(options.parameters,1)
   
        K = gaussian_kernel(train_data,train_data,parameters(i,3:4),parameters(i,2))+ parameters(i,1)+parameters(i,5);
        k_star = gaussian_kernel(train_data,x,parameters(i,3:4),parameters(i,2))+ parameters(i,1);
        K_ = gaussian_kernel(x,x,parameters(i,3:4),parameters(i,2))+ parameters(i,1);
        %
        L = chol(K,'lower');
        Lk = L \ k_star;
        
        % mean_star is an estimate of the predicted RSSI value at the test
        % locations (particles or grid values)
        mean_star = Lk'*(L\reference_map(:,i));
        
        % restricting the mean_star to -105 if the below conditions are not
        % met.
        % here we are encoding the if predicted RSSI values are not in [-50,-105]
        % or the particles are not inside the boundaries of the floor.
        % FIXME : get the boundaries of the floor by plotting the floor
        % map.
        mean_star(mean_star < -105 ... 
                | mean_star > -50 ...
                | (0>x(:,1) ...
                | x(:,1)>40) ...
                | (-3>x(:,2) ...
                | x(:,2)>5.35)) = min(min(reference_map));
        

        sigma_star = sqrt(abs(diag(K_)' - sum(Lk.^2))');
        %sigma2_star_temp = K_ - (Lk'*Lk);
        
        likelihood = likelihood - (0.5*(y(i)-mean_star).^2)./sigma_star.^2 - 0.5*log(2*pi*sigma_star.^2);
        %likelihood(:,i) = (0.5*(y(i)-mean_star).^2)./sigma_star.^2 - 0.5*log(2*pi*sigma_star.^2);
end
end