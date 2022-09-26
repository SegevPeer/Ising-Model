function energy= cal_energy(j,spins,dim)
global L;
h= @(j,s1,s2) j*s1*s2;
energy=0;
if(dim==2)
for x=1:L
    for y=1:L
         energy=energy+h(j(x,y,1),spins(x,y),spins(modi(x+1,L),y));
         energy=energy+h(j(x,y,2),spins(x,y),spins(x,modi(y+1,L))); 
    end
end
energy=-energy;
end
if(dim==3)
    for x=1:L
      for y=1:L
          for z=1:L
             energy=energy+h(j(x,y,z,1),spins(x,y,z),spins(modi(x+1,L),y,z));
             energy=energy+h(j(x,y,z,2),spins(x,y,z),spins(x,modi(y+1,L),z));
             energy=energy+h(j(x,y,z,3),spins(x,y,z),spins(x,y,modi(z+1,L)));
          end
      end
    end
    energy=-energy;
end
end
