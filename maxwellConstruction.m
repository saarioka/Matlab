% Termo LH10 tehtava 3 - Santeri Saariokari
clear all
syms t k
format short
figure
% Piirretaan kuva funktiosta
v=linspace(0.6,2.5);
p=(8*0.95)./(3.*v-1)-3./(v.^2);
plot(v,p)
axis([0 2.5 0.6 0.9])

% Funktiona
pf(t)=(8*0.95)./(3.*t-1)-3./(t.^2);

% Muodostetaan kolme x:n arvoa jolla saadaan sama y kuin muttujalla alaraja
% Lahdetaan liikkeelle arvauksella 0.68
alaraja=0.68;
assume(k>0.65);
assume(k<3);
x=double(solve((8*0.95)./(3.*k-1)-3./(k.^2)-pf(alaraja)));

% Ne ovat nyt vektorissa x:talletetaan ne muuttujiin
keski=x(2);
ylaraja=x(3);

% Ensimmainen pinta-ala on suorakaide - integraali
A1=(keski-alaraja)*pf(alaraja)-double(int(pf,alaraja,keski));

% Toinen pinta-ala on integraali - suorakaide
A2=double(int(pf,keski,ylaraja))-(ylaraja-keski)*pf(keski);

% Etsitaan nyt numeerisesti raja, jolloin A1=A2, ts. A1-A2=0 (lahes)
tic
while(A1-A2)>0,
    alaraja=alaraja+0.0001;
    A1=abs(double(int(pf,alaraja,keski))-(keski-alaraja)*pf(alaraja));
    A2=double(int(pf,keski,ylaraja))-(ylaraja-keski)*pf(keski);
    x=double(solve((8*0.95)./(3.*k-1)-3./(k.^2)-pf(alaraja)));
    keski=x(2);
    ylaraja=x(3);
end
toc
% Piirretaan apuviiva ja -pisteet
hold on;
plot(x,pf(x),'r*')
line([0 2.5],[pf(alaraja) pf(alaraja)]);

disp('Tulokset:')
disp('Eka ala')
disp(double(A1))
disp('Toka ala')
disp(double(A2))
disp('Paine')
disp(double(pf(alaraja)))