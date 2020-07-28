clear
clc
fprintf('Heun Method \n')
y=input('Enter function in terms of variable t and y=','s');
c=inline(y,'t','y');
c
t1=input('Enter the lower limit in in+teger=');
t2=input('Enter the upper limit in integer=');
to=input('Enter value of to=');
yo=input('Enter value of yo=');
h=input('Enter value of h=');
a=input('Equation to find actual sol=','s');
q=inline(a,'t')
x=t1+h;
fprintf('        tn     K1       K2        yn       Actual Sol      Error\n');
for l=x:h:t2
 %for i=1:2  
    
    K1=c(t1,yo);
    K2=c(t1+h,y1+K1*h);
    yo=yo+(0.5*K1+0.5*K2)*h;
    %fprintf('loop change')
  
    t1=t1+h;
    b=q(t1);
    e=b-yo;
      disp([t1 K1 K2 yo b e])
end
