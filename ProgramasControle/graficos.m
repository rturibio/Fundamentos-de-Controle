% UFSC - Campus Ararangua
% Fundamentos de Controle
% Trabalho identificação sistema pelo diagrama de bode
% Plotagem dos resultados

wn = 0.75;
qsi = 0.275;
Re = -qsi*wn;
Im = wn*sqrt(1-qsi^2);

%zpk form
zeros = [1 -0.9];
poles = [0 Re+Im*i Re-Im*i -0.01 -1];
gain = 0.1;

system = zpk(zeros, poles, gain);

%load the value of W first, otherwise this will fail
[MAGgot, PHASEgot, Wout] = bode(system, W);

close all

% converte para dB
MAGdb = 20*log10(MAG);
MAGgot = 20*log10(MAGgot);

% Remove dimensoes unitarias
MAGdb=squeeze(MAGdb);
PHASE=squeeze(PHASE);
MAGgot=squeeze(MAGgot);
PHASEgot=squeeze(PHASEgot);

% grafico
subplot(2,1,1)
semilogx(W,MAGdb, Wout, MAGgot, '--r')
legend('Diagrama Dado', 'Diagrama Obtido')
ylabel('Magnitude [dB]') 
grid
subplot(2,1,2)
semilogx(W,PHASE, Wout, PHASEgot, '--r')
legend('Diagrama Dado', 'Diagrama Obtido')
xlabel('Freqüência [rad/s]')
ylabel('Fase [graus]')
grid
