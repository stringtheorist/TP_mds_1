function Illustration(Type,u,s,t)
% 
% %=> visualisation de quelques modes propres
% figure(1);
% plot(s,Y([1:3 nmax],:),'LineWidth',2)
% xlabel('s [m]')
% legend('n=1','n=2','n=3','n=nmax')
% set(gca,'FontSize',24)
% 
% % Amplitude modale
% 
% %=> visualisation des amplitudes modales an
% figure(2);
% stem(wn,abs(an),'LineWidth',2)
% xlabel('wn [rad/s]')
% ylabel('|an| [m]')
% set(gca,'FontSize',24)
% 
% % Fonction en temps
% %=> visualisation de T(t) pour quelques modes
% figure(3);
% plot(t,T([1:3 nmax],:),'LineWidth',2)
% xlabel('t [s]')
% legend('n=1','n=2','n=3','n=nmax')
% set(gca,'FontSize',24)