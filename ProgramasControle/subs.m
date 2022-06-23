% UFSC - Campus Ararangua
% Fundamentos de Controle
% Trabalho identificação sistema pelo diagrama de bode
% Plotagem dos resultados

%zpk form
zeros = [];
poles = [0 0 -10+95i -10-95i];
gain = 1;

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
semilogx(W,MAGdb, Wout, MAGdb-MAGgot, '--r')
legend('Diagrama Dado', 'Subtração')
ylabel('Magnitude [dB]') 
grid
subplot(2,1,2)
semilogx(W,PHASE, Wout, PHASE-PHASEgot, '--r')
legend('Diagrama Dado', 'Subtração')
xlabel('Freqüência [rad/s]')
ylabel('Fase [graus]')
grid
