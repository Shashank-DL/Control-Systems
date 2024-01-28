    K=5;
    num = [60*K 300*K];
    den = [1 6.2 -53.8 1];

    open_loop = tf(num, den);
    closed_loop = feedback(open_loop, 1, -1);

    t = linspace(0, 100, 1000);

    S = step(closed_loop, t);
    plot(S);
    stepinfo(S)
    xlabel('Time [sec]');
    ylabel('Speed [kph]');
    title(['Response to a Setpoint Change for K=' num2str(K)]);
    grid on


