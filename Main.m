%Made by Segev Peer, date: 23.01.2021
%% Global viriables and initialization 
clear();clc();
global L; %L-lattice lentgh
energy=0;tot=zeros(10,1);
[type,dim,seed]= tafrit(); %prints the menu
rng(seed) %the random number will be generated using this seed
%% sites spin and J initialization
if(dim==2)
j=zeros(L,L,2);spins=zeros(L,L);
for trails=1:10
for x=1:L
    for y=1:L
        for z=1:2
    if(rand()>0.5)
        j(x,y,z)=1;
    else
        j(x,y,z)=-1;
    end
        end
    end
end
for x=1:L
    for y=1:L
    if(rand()>0.5)
        spins(x,y)=1;
    else
        spins(x,y)=-1;
    end
    end
end
spins=ann(spins,j,type,dim); %starts the SA process
energy=energy+cal_energy(j,spins,dim); %sums the total energy of 10 runs
seed=seed+1; % next run will have different j and spins matrices.
rng(seed);
tot(trails)=cal_energy(j,spins,dim)/L^2; %average energy of each run
end
av_en=0;
av_en=energy/(trails*L^2);
disp(['The average energy per atom is: ' ,num2str(av_en)])
end
%%
if(dim==3)
j=zeros(L,L,L,3);spins=zeros(L,L,L);
for trails=1:10
for x=1:L
    for y=1:L
        for z=1:L
        for d=1:3
    if(rand()>0.5)
        j(x,y,z,d)=1;
    else
        j(x,y,z,d)=-1;
    end
        end
        end
    end
end
for x=1:L
    for y=1:L
        for z=1:L
    if(rand()>0.5)
        spins(x,y,z)=1;
    else
        spins(x,y,z)=-1;
    end
        end
    end
end
spins=ann(spins,j,type,dim);
energy=energy+cal_energy(j,spins,dim);
seed=seed+1;
rng(seed);
tot(trails)=cal_energy(j,spins,dim)/L^3;
end
av_en=energy/(trails*L^3);%calculates the average energy per particle
disp(['The average energy per atom is: ' ,num2str(av_en)])%prints average energy per particle
end

