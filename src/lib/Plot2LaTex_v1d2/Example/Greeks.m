function [ greeks ] = Greeks
% GREEKS produces a cell with the LaTeX command for greek letters.

% greeks = ...
% {'ALPHA'      'A'         '\alpha'
%  'BETA'       'B'         '\beta'
%  'GAMMA'      '\Gamma'    '\gamma'
%  'DELTA'      '\Delta'    '\delta'
%  'EPSILON'    'E'         {'\epsilon','\varepsilon'}
%  'ZETA'       'Z'         '\zeta'
%  'ETA'        'H'         '\eta'
%  'THETA'      '\Theta'    {'\theta','\vartheta'}
%  'IOTA'       'I'         '\iota'
%  'KAPPA'      'K'         '\kappa'
%  'LAMBDA'     '\Lambda'   '\lambda'
%  'MU'         'M'         '\mu'
%  'NU'         'N'         '\nu'
%  'XI'         '\Xi'       '\xi'
%  'OMICRON'    'O'         'o'
%  'PI'         '\Pi'       {'\pi','\varpi'}
%  'RHO'        'P'         {'\rho','\varrho'}
%  'SIGMA'      '\Sigma'    {'\sigma','\varsigma'}
%  'TAU'        'T'         '\tau'
%  'UPSILON'    '\Upsilon'  '\upsilon'
%  'PHI'        '\Phi'      {'\phi','\varphi'}
%  'CHI'        'X'         '\chi'
%  'PSI'        '\Psi'      '\psi'
%  'OMEGA'      '\Omega'    '\omega'};

greeks = ...
{'ALPHA'      'A'         '\alpha'
 'BETA'       'B'         '\beta'
 'GAMMA'      '\Gamma'    '\gamma'
 'DELTA'      '\Delta'    '\delta'
 'EPSILON'    'E'         '\epsilon'
 'ZETA'       'Z'         '\zeta'
 'ETA'        'H'         '\eta'
 'THETA'      '\Theta'    '\theta'
 'IOTA'       'I'         '\iota'
 'KAPPA'      'K'         '\kappa'
 'LAMBDA'     '\Lambda'   '\lambda'
 'MU'         'M'         '\mu'
 'NU'         'N'         '\nu'
 'XI'         '\Xi'       '\xi'
 'OMICRON'    'O'         'o'
 'PI'         '\Pi'       '\pi'
 'RHO'        'P'         '\rho'
 'SIGMA'      '\Sigma'    '\sigma'
 'TAU'        'T'         '\tau'
 'UPSILON'    '\Upsilon'  '\upsilon'
 'PHI'        '\Phi'      '\phi'
 'CHI'        'X'         '\chi'
 'PSI'        '\Psi'      '\psi'
 'OMEGA'      '\Omega'    '\omega'};


%% append $ for use in Latex
for i=1:numel(greeks)
    greeks{i} = ['$', greeks{i}, '$'];
end

end

