% Stochiometry matrix for the vilar oscillator.
%
% Andreas Hellander, 2009. 
%

function nr = nr_vilar()

nr=zeros(18,9);

nr(1,:) =[ 0  0  1 -1  0  0  0  0  0];
nr(2,:) =[-1  0 -1  1  0  0  0  0  0];
nr(3,:) =[ 0  0  0  0  1 -1  0  0  0];
nr(4,:) =[-1  0  0  0 -1  1  0  0  0];
nr(5,:) =[ 0  0  0  0  0  0  0  1  0];
nr(6,:) =[ 0  0  0  0  0  0  0  1  0];
nr(7,:) =[ 0  0  0  0  0  0  0 -1  0];
nr(8,:) =[ 0  0  0  0  0  0  1  0  0];
nr(9,:) =[ 0  0  0  0  0  0  1  0  0];
nr(10,:)=[ 0  0  0  0  0  0 -1  0  0];
nr(11,:)=[ 0  0  0  0  0  0  0  0  1];
nr(12,:)=[ 0  0  0  0  0  0  0  0 -1];
nr(13,:)=[ 0 -1  0  0  0  0  0  0  1];
nr(14,:)=[ 1  0  0  0  0  0  0  0  0];
nr(15,:)=[ 1  0  0  0  0  0  0  0  0];
nr(16,:)=[ 1  0  0  0  0  0  0  0  0];
nr(17,:)=[-1  0  0  0  0  0  0  0  0];
nr(18,:)=[-1  1  0  0  0  0  0  0 -1];
    
