function retour = proximite(robot, INFO)
% Chaque robot suit la direction de son voisin le plus proche
%  
courte = 0;
if (INFO.nbVoisins)
    for i=1:INFO.nbVoisins
        distx = (INFO.voisins{i}.x - robot.x)^2;
        disty = (INFO.voisins{i}.y - robot.y)^2;
        dist(i) = sqrt(distx + disty);
    end
    courte = 1;
    for i=1:INFO.nbVoisins
        if (dist(i) < dist(courte))
            courte = i;
        end
    end
end
if (courte && INFO.voisins{courte}.vx && INFO.voisins{courte}.vy)
	v(1) = INFO.voisins{courte}.vx;
	v(2) = INFO.voisins{courte}.vy;
else
	v(1) = robot.vx;
	v(2) = robot.vy;
end
retour = v;
