function [Rx] = RotationX(ang)
ang = ang*pi/180;
Rx = eye(3,3);
Rx(2,2) = cos(ang);
Rx(3,2) = sin(ang);
Rx(2,3) = -sin(ang);
Rx(3,3) = cos(ang);
end