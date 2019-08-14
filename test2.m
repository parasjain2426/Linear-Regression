x=load('testdata.txt');%upload the training data here
input=x(:,end-1);
y=x(:,end);
normalization= true; %normalizing the training data
if (normalization)
    max1=max(input);
    min1=min(input);
    input=(input-max1)/(max1-min1);
end
i=[ones(length(input),1) input];
theta=zeros(2,1);
alpha=0.01; %learning rate
iterations=1500; 
m=length(y);
[theta, Jhis]=update(i,y,theta,alpha,iterations,m);
y1=25;
if(normalization)  %normalizing the testing data with max and min terms of trained data
y1=(y1-max1)/(max1-min1);
end
ypred=theta(1)+theta(2)*y1
