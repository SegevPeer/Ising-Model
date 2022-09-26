function [type,dim,seed]= tafrit()%prints the manu.
global L;
disp('Ground state energy of the Ising spin glass')
disp('Choose option from the menu')
disp('(1) 2D system using Metropolis algorithm')
disp('(2) 2D system using Demon algorithm')
disp('(3) 3D system using Metropolis algorithm')
disp('(4) 3D system using Demon algorithm')
choice=input('Enter your choice: ');
if(choice>4 || choice<1)
    disp('Invalid choice, please restart the program.');
    dim=0;type=0;seed=0;
    return;
end
L=input('Enter lattice length: ');
seed=input('Enter initial seed: ');
if(choice==1)
    dim=2;type=1;
elseif(choice==2)
    dim=2;type=2; 
elseif(choice==3)
    dim=3;type=1;
elseif(choice==4)
    dim=3;type=2;
end
end