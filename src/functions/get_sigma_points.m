function sigma_points = get_sigma_points(m,P,c,n)

L_minus = chol(P,'lower');
sigma_points = [zeros(n,1) L_minus -L_minus];
sigma_points = sqrt(c)*sigma_points + repmat(m',1,2*n+1);

end