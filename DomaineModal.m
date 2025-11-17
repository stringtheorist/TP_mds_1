function [n,kn,wn,Lamb,Per,Freq]=DomaineModal(Nw,L,C)
n=(1:Nw)'; 
kn=n*pi/L;
wn=C*kn;
Lamb=2*pi./kn;
Per=2*pi./wn; 
Freq=1./Per; 