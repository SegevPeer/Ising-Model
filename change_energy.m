function denergy= change_energy(j,spins,x,y,z,dim)
global L;
denergy=0;
h= @(j,s1,s2) j*s1*s2;
if(dim==2)
denergy=denergy+h(j(modi(x-1,L),y,1),spins(x,y),spins(modi(x-1,L),y));
denergy=denergy+h(j(x,y,1),spins(x,y,1),spins(modi(x+1,L),y));
denergy=denergy+h(j(x,modi(y-1,L),2),spins(x,y),spins(x,modi(y-1,L)));
denergy=denergy+h(j(x,y,2),spins(x,y),spins(x,modi(y+1,L)));
denergy=-denergy;
end
if(dim==3)
denergy=denergy+h(j(modi(x-1,L),y,z,1),spins(x,y,z),spins(modi(x-1,L),y,z));
denergy=denergy+h(j(x,y,z,1),spins(x,y,z,1),spins(modi(x+1,L),y,z));
denergy=denergy+h(j(x,modi(y-1,L),z,2),spins(x,y,z),spins(x,modi(y-1,L),z));
denergy=denergy+h(j(x,y,z,2),spins(x,y,z),spins(x,modi(y+1,L),z));
denergy=denergy+h(j(x,y,modi(z-1,L),3),spins(x,y,z),spins(x,y,modi(z-1,L)));
denergy=denergy+h(j(x,y,z,3),spins(x,y,z),spins(x,y,modi(z+1,L)));
denergy=-denergy;
  
end
end
