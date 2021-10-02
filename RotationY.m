function [Ry] = RotationY(ang)
ang = ang*pi/180;
Ry = eye(3,3);
Ry(1,1) = cos(ang);
Ry(3,1) = -sin(ang);
Ry(1,3) = sin(ang);
Ry(3,3) = cos(ang);
end