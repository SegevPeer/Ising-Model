function spins= ann(spins,j,type,dim)%the annealing process
if(dim==2)
energy=zeros(5,1); index=2;
energy(1)=cal_energy(j,spins,dim);
if(type==1)
for T=5:-0.05:0
    if(type==1)
    spins=mtr(j,spins,T,dim);
    energy(index)= cal_energy(j,spins,dim);
    index=index+1;
    end
   
end

end

%plot(1:1:102,energy);
if(type==2)
    for i=4:-0.1:0
    spins=dem(j,spins,i);
    energy(index)= cal_energy(j,spins);
    index=index+1;
    end
    
end
%hold on
%plot(1:1:42,energy);
end
if(dim==3)
energy=zeros(5,1); index=2;
energy(1)=cal_energy(j,spins,dim);
if(type==1)
for T=5:-0.05:0
    if(type==1)
    spins=mtr(j,spins,T,dim);
    energy(index)= cal_energy(j,spins,dim);
    index=index+1;
    end
   
end

end

%plot(1:1:102,energy);
if(type==2)
    for i=4:-0.1:0
    spins=dem(j,spins,i,dim);
    energy(index)= cal_energy(j,spins,dim);
    index=index+1;
    end
    
end
%hold on
%plot(1:1:42,energy);
end 
end