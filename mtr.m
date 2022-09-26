function spins= mtr(j,spins,T,dim)%metropolis algorithm
global L;
b=1/T;
if(dim==2)
for i=1:1000
temp=spins;
x=randi(L);
y=randi(L);
temp(x,y)=-temp(x,y);
dE=change_energy(j,temp,x,y,0,dim);
if(dE<0)
    spins=temp;
elseif(exp(-dE*b)>rand())
    spins=temp;
end
end
end
if(dim==3)
    for i=1:10000
temp=spins;
x=randi(L);
y=randi(L);
z=randi(L);
temp(x,y,z)=-temp(x,y,z);
dE=change_energy(j,temp,x,y,z,dim);
if(dE<0)
    spins=temp;
elseif(exp(-dE*b)>rand())
    spins=temp;
end
    end
end
end