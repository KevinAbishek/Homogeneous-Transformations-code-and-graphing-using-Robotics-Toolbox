function [T] = transformation(ZYXeul, p)
angz = ZYXeul(1);
angy = ZYXeul(2);
angx = ZYXeul(3);
Rnet = RotationZ(angz)*RotationY(angy)*RotationX(angx);
T = [Rnet p'];
T(4,:) = [0 0 0 1];
end