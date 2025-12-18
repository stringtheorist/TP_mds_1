%% ========================================================================
%% INITIALISATION =========================================================
clear;close all;clc;
nmax=10;
%% ========================================================================
% Chargement des parametres
[L,R,ro,Note,H,el,Nw,Aff,Ressort]=ParamInit;
% Parametres intermediaires
[A,C,N0]=ParamInter(R,L,ro,Note);
% Domaine modal
[n,kn,wn,Lamb,Per]=DomaineModal(Nw,L,C);
% Domaine spatial
[ds,s,Ns]=DomaineSpatial(Lamb,L);
% Domaine temporel
[t,Nt]=DomaineTemporel(Per);
% Rq : dans une phase de bebeugage, il faut que [Nt,Ns,Nw] aient des valeurs 
% raisonnables (<=1000) et si possible distinctes.
disp(['[Nt,Ns,Nw]=[' num2str([Nt,Ns,Nw]) ']'])


% Excitation: impacte ponctuel en s=el 
V=C*2;          % Vitesse de l'impact [m/]
el=L/6;         % Position de l'impact[m]
K=5.1*pi*N0/L;  % Raideur du ressort appliqué en s=L [N/m]
% Domaine modal
nmax=10;        % Nombre maximal de mode considéré      
n=(1:nmax)';    % Indices modaux




%% ========================================================================
%% ANALYSE MODALE =========================================================
if Ressort=='NON'

    % Modes propres
    Y=ModePropre(kn,s,Nw,Aff);
    % Amplitude modale
    [an,bn]=AmplitudeModale(L,el,kn,wn,n,H,Aff);
    % Fonction en temps
    T=FctTemporelle(Nw,wn,an,bn,t,Aff);
    % Deplacement
    u=FctDeplacement(Y,T);

%% ========================================================================
%% VALORISATION ==========================================================
    Type=1;Illustration(Type,u,s,t,Nt,L,H)
    Type=2;Illustration(Type,u,s,t,Nt,L,H)
    Type=3;Illustration(Type,u,s,t,Nt,L,H)
    Film(u,s,Nt,L,H)


%% ========================================================================
%% ANALYSE MODALE =========================================================
elseif Ressort=='OUI'
    % Modes propres
    for in=1:nmax
    % Y_ij, avec i=>n et j=>s
    Y(in,:)=cos(kn(in).*s)+K/N0*sin(kn(in).*s)./kn(in);    % Y_ij, avec i=>n et j=>s
    end
    %-> visualisation de quelques modes propres
    figure(5);
    plot(s,Y([1:3 nmax],:),'LineWidth',2)
    xlabel('s [m]')
    legend('n=1','n=2','n=3','n=nmax')
    set(gca,'FontSize',24)
    % Amplitude modale
    [an,bn]=AmplitudeModale(L,el,kn,wn,n,H,Aff);
    % Fonction en temps
    T=FctTemporelle(Nw,wn,an,bn,t,Aff);
    % Deplacement
    u=FctDeplacement(Y,T);

    Type=3;Illustration(Type,u,s,t,Nt,L,H)
end

