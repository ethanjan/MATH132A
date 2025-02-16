function y = f(x)
num = 0.087933427812299;
num2 = 2 * num;
grad1 = -2 * exp(num2*-2) + 2*(num2)*4;
grad2 = num2*exp(num2*-2) + 2*num2^2*-2;
y = exp((num2 - grad1*x)*(-2+grad2*x))+(num - grad1*x)^2*(-2+grad2*x)^2;
