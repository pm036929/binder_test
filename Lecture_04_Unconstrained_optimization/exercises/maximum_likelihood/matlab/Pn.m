function pn = Pn(x, y, beta)
    %% calculate logit choice probabilities Pn(x_n|beta)
    [m, ~, ~] = size(x);                        
    pn = zeros(m,1); 
    for i = 1:m
        alternatives = beta'*squeeze(x(i,:, :))';    % beta * costs of all heating solutions for id i
        chosen_alternative = beta'*squeeze(x(i,y(i), :));  % beta * costs of chosen heating solution
        pn(i) = 1/sum(exp(alternatives-chosen_alternative));     
    end
end