% Hardik Chhabra - 2020UEA6504

%TF of Block 1
n1=1;
d1=[1 0 0];
G1=tf(n1,d1);
%TF of Block 2
n2=50;
d2=[1 1];
G2=tf(n2, d2);
%TF of Block 3
n3=2;
d3=[1 0];
G3=tf(n3, d3);
%TF of Block 4
n4=[1 0];
d4=1;
G4=tf(n4, d4);
%TF of Block 5
n5=2;
d5=1;
G5=tf(n5, d5);
% Block Diagram Reduction
M1 = parallel(G4, -G5);
M2 = feedback(G2, G3);
M3 = series(M1, M2);
M4 = series(M3, G1);
M_final = feedback(M4, 1)