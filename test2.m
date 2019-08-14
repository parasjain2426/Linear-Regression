x=load('testdata.txt');
input=x(:,5);
y=x(:,3);
normalization= true;
if (normalization)
    max1=max(input);
    min1=min(input);
    input=(input-max1)/(max1-min1);
end
i=[ones(length(input),1) input];
theta=zeros(2,1);
alpha=0.01;
iterations=1500;
m=length(y);
[theta, Jhis]=update(i,y,theta,alpha,iterations,m);
y1=25;
if(normalization)
y1=(y1-max1)/(max1-min1);
end
ypred=theta(1)+theta(2)*y1