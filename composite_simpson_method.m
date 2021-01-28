clear;
close;
clc;



%Given
h=0.5;
x_last=2*pi;
x=0:h:x_last;

%FF value   f=x +4cosx
f_last= x_last +4*cos(x_last);
f= x+ 4*cos(x);

%odd even value

f4= f(2:2:end-1);
f2=f(3:2:end-2);

%Area calc Numerical intergration
area_simpson= (h/3)*(f(1) +4*sum(f4)+2*sum(f2)+f(end));    %area in [0,6]
area_trapezo= 0.5*(x_last - x(end))*(f_last+f(end));
area_total= area_simpson + area_trapezo

fvalues=[f,f_last]
