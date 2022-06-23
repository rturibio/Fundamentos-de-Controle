function qsi = getQsi(Mp)
    x = (((log(Mp)))/pi)^2;
    qsi = sqrt(x/(1+x));
end
