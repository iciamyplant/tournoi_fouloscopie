function retour = start(robot)
%Pour démarrer la simulation
% 
if (robot.cible_detected==0)
    v = [0 ; 0];
    if (robot.vx==0 && robot.vy==0) % le robot est immobile
        if (robot.x>=0.0 && robot.y >= 0.0)
            v = [4 ; 4]; % haut à droite
        end
        if (robot.x<=0.0 && robot.y <= 0.0)
            v = [-4 ; -4]; % bas à gauche
        end
        if (robot.x<=0.0 && robot.y>=0.0)
            v = [-4 ; 4]; % haut à gauche
        end
        if (robot.x>=0.0 && robot.y >= 0.0)
            v = [4 ; -4]; % bas à droite
        end
        robot.move(v(1),v(2));
    end
end
