function [A,C,N0]=ParamInter(R,L,ro,Note)
A=pi*R^2;       % Aire [m^2]
C=2*L*Note;     % Celerité [m/s] <<FAUX>>
N0=ro*A*C^2;    % Tension [N]
%Def=N0/(E*A);   % Deformation [~]
