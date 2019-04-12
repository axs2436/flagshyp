
% Read Flagshyp file
file=fopen('energy.dat','r');
formatSpec = '%e %e %e';
sizeA = [3 inf ];
A = fscanf(file,formatSpec,sizeA);
fclose(file);

plot(A(1,:),A(2,:),'DisplayName','Kinetic Energy','LineWidth',4)
hold on
plot(A(1,:),A(3,:),'DisplayName','Internal Work','LineWidth',4)
plot(A(1,:),A(2,:)+A(3,:),'DisplayName','Total Energy','LineWidth',4)
legend('show')
xlabel('Energy')
ylabel('Time (s))')