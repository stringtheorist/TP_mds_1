function Y=ModePropre(kn,s,Nw,Aff)
for in=1:Nw
    % Y_ij, avec i=>n et j=>s
    Y(in,:)=sin(kn(in)*s); 
end