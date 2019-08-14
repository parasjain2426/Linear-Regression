function [J]= costfunc(i,y,theta,m)
J= (i*theta-y)'*(i*theta-y)/(2*m);
end