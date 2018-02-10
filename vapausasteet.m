Omega_id=[];
for i=0:10
    Omega_id=[Omega_id nchoosek(i+3-1,i)];
end
Omega_id=Omega_id.';
kvantit=[0 1 2 3 4 5 6 7 8 9 10].';

Omega_unid=[1 1 2 3 4 5 6 8 9 11 14].';

table(Kvantit,Omega_id,Omega_unid)

plot(Kvantit,Omega_id)
title('Identifioidut vapausasteet kvanttien maaran funktiona')
xlabel('kvantit')
ylabel('vapausasteet')

figure
plot(kvantit,Omega_unid)
title('Identifioitumattomat vapausasteet kvanttien maaran funktiona')
xlabel('kvantit')
ylabel('vapausasteet')
