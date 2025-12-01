function [L,R,ro,Note,H,el,Nw,Aff]=ParamInit
L=1;            % Longueur [m]
    R=0.001;        % Rayon [m]
    % Materiau : acier
    %E=210e9;        % Module de Young [Pa]
    ro=7800;        % Masse volumique [kg/m^3]
    % Tension : corde accordee sur le la-440
    Note=440;       % Frequence fondamentale [Hz]
    % Excitation: corde pincee d'une hauteur H en s=el 
    H=L/5;          % Hauteur [m]

    el=L/4;         % position [m]
    % Domaine modal
    Nw=10;  %Nw=nmax
    Aff = 1 ; %Aff=1 pour afficher les amplitudes modales et Aff=0 pour ne pas afficher
       
