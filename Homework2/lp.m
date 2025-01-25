clear

%coefficient matrix
%(b, f, e, p, d, l, y)
%we only care about the value of y
f = [0 0 0 0 0 0 1];
%constraint matrix
A = [1 -1 0 0 0 0 0;
    1 0 0 0 0 -1 0;
    0 1 -1 0 0 0 0;
    0 1 0 -1 0 0 0;
    0 0 1 0 -1 0 0;
    0 0 0 1 -1 0 0;
    1 0 0 0 0 0 -1;
    0 1 0 0 0 0 -1;
    0 0 1 0 0 0 -1;
    0 0 0 1 0 0 -1;
    0 0 0 0 1 0 -1;
    0 0 0 0 0 1 -1;
    ];
%constraint vector
b = [-3;
    -3;
    -2;
    -2;
    -3;
    -4;
    -3;
    -2;
    -3;
    -4;
    -1;
    -2
    ];
%lower bounds
lb = [0;0;0;0;0;0;0];
ub = [inf;inf;inf;inf;inf;inf;inf];
%compute solution
x = linprog(f,A,b,[],[],lb,ub);