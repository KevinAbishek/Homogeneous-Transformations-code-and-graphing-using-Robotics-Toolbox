function [Rz] = RotationZ(ang)
ang = ang*pi/180;
Rz = eye(3,3);
Rz(1,1) = cos(ang);
Rz(1,2) = -sin(ang);
Rz(2,1) = sin(ang);
Rz(2,2) = cos(ang);
end
