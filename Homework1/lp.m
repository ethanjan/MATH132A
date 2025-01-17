clear

%coefficient matrix
f = [0.14 0.12 0.2 0.75 0.15];
%constraint matrix
A = -1 * [23 171 65 112 188;
    0.1 0.2 0 9.3 16;
    0.6 3.7 2.2 7 7.7;
    6 30 13 0 2;];
%constraint vector
b = -1 * [2000; 50; 100; 250];
%lower bounds
lb = [0;0;0;0;0];
ub = [inf;inf;inf;inf;inf];
%compute solution
x = linprog(f,A,b,[],[],lb,ub);

