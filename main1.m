%Using Custom Transformation function:
Pab = [3 1 1]';
Pb = [1 0 0]';
eulZYX = [0 30 0];
PTb = Pb;
PTb(4,:) = 1;
Tab = transformation(eulZYX, Pab');
PTa = Tab*PTb;
Pa = PTa(1:3);
hold on
trplot(transformation([0 0 0], [0 0 0]));
trplot(Tab);
plot2([[0 0 0]; Pab'], 'black');
plot2([Pab'; Pa'], 'red');
plot2([[0 0 0]; Pa'], 'green');
hold off
figure;

%Using Robotics Toolbox Transformation function:
Tabrt = rt2tr(RotationZ(0)*RotationY(30)*RotationX(0), Pab);
Pa = homtrans(Tabrt, Pb);
hold on
trplot(transformation([0 0 0], [0 0 0]));
trplot(Tab);
plot2([[0 0 0]; Pab'], 'black');
plot2([Pab'; Pa'], 'red');
plot2([[0 0 0]; Pa'], 'green');
hold off