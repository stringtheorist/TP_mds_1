function Film(u,s,Nt,L,H) 


videoFilename = "animatioOOOn.avi"; % Nom du fichier vidéo
%writerObj = VideoWriter(videoFilename,'Motion JPEG AVI'); % Choisir le format AVI
writerObj = VideoWriter("toto.avi"); % Choisir le format AVI
open(writerObj); % Ouvrir l'objet VideoWriter pour l'écriture

figure(1);
plot(s, u(:,1), 'k', 'LineWidth', 2); 
Cadre=max(max(abs(u)));
axis([0 L -Cadre Cadre]);axis off
set(gca,"NextPlot","replacechildren")
%axis off%([0 L -max(max(abs(u))) max(max(abs(u)))])
for j=1:Nt 
    plot(s, u(:,j));%, 'k', 'LineWidth', 2); 
    j;
    axis off
    frame = getframe(gcf);
    writeVideo(writerObj,frame) % Ajouter la frame à la vidéo
end

    % Fermer l'objet VideoWriter après l'enregistrement
close(writerObj);
%disp('Vidéo enregistrée sous animation.avi');
