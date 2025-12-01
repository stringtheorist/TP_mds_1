function [n,kn,wn,Lamb,Per,Freq]=DomaineModal(Nw,L,C)
Dirichlet_Neuman = 'OUI'; %('OUI' ou 'NON')
if Dirichlet_Neuman == OUI
    n=(1:Nw)'; 
    kn=(2*n-1*pi)/2*L;
    wn=C*kn;
    Lamb=2*pi./kn;
    Per=2*pi./wn; 
    Freq=1./Per; 
else
    n=(1:Nw)'; 
    kn=n*pi/L;
    wn=C*kn;
    Lamb=2*pi./kn;
    Per=2*pi./wn; 
    Freq=1./Per; 
end