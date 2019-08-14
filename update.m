function [theta ,Jhis]=update(i,y,theta,alpha,iterations,m)
Jhis=zeros(iterations,1);
for j=1:iterations
    h=(i*theta-y)';
    theta(1)=theta(1)- alpha*h*(1/m)*i(:,1);
    theta(2)=theta(2)- alpha*h*(1/m)*i(:,2);
    Jhis(j)= costfunc(i,y,theta,m);
end
end