function spins= dem(j,spins,max,dim)%Demon algorithm
global L; Edemon=max;
if(dim==2)
for i=1:1000
temp=spins;
x=randi(L);
y=randi(L);
temp(x,y)=-temp(x,y);
dE=change_energy(j,temp,x,y,0,dim);
if(dE<Edemon)
    Edemon=Edemon-dE;
    spins=temp;
end
if(Edemon>max) 
    Edemon=max;
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
if(dE<Edemon)
    Edemon=Edemon-dE;
    spins=temp;
end
if(Edemon>max) 
    Edemon=max;
end
end   
end
end