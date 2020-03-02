function res = log_like(x, y, beta)
    %% calculate LL(beta)
    res = sum(log(Pn(x, y, beta)));
end