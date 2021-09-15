w=[.1:.1:10];
G1=w;
G1=G1.*w^-1;
G1=20*log10(abs(10/9))*G1;
G2=-20*log10(abs(%i*w));
G3=20*log10(abs((%i*w)^2 +(%i*w)*0.4 + 1));
G4=-20*log10(abs((%i*w)^2*(1/9)+(%i*w)*(8/90) + 1));
G=G1+G2+G3+G4;
plot(w,G1,'r',w,G2,'m',w,G3,'y',w,G4,'b',w,G,'k');
legend('G1','G2','G3','G4','G',[3]);
a = gca ();                          //Verificar esta linha
a.log_flags = "ln";                  //Verificar esta linha
ylabel('Ganho (dB)');
xlabel('Omega (rad)');
xgrid
