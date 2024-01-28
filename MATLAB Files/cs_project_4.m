P = [1 2 3 4 5 6 7];

for K = 1:length(P)
    num = [60*K 300*K];
    den = [1 6.2 -53.8+60*K 300*K+1];

    subplot(length(P), 1, K);
    S = step(num,den);
    plot(S)
    stepinfo(S)
    
    xlabel('Time [sec]');
    ylabel('Speed [kph]');
    title(['Response to a Setpoint Change for K=' num2str(K)]);
end
