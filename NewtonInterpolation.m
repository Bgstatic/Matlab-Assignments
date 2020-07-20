
% Question-3.c

clc, clear,close all
 x = -1:0.5:1; 
y = 1./(1+25.*x.^2); 
n = length(x);
D = zeros(n,n); 
D(:,1) = y';
for j=2:n 
  for k=j:n 
    D(k,j) = (D(k,j-1)-D(k-1,j-1))/(x(k)-x(k-j+1)); 
  end 
end 
C = D(n,n); 
for k=(n-1):-1:1  
  C = conv(C,poly(x(k))); 
  m = length(C); 
  C(m) = C(m) + D(k,k); 
end 
disp('The coefficients of 4th order polynomial are') 
disp(C)

a = 0.8;
F = a.^4 - 4.2772*a^2 + 3.3156;
disp('f(0.8)=')
disp(F)

