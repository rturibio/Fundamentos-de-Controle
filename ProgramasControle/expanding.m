close all
function [] = expanding( p )

order = lenght(p);

syms('s');

for root = 1:order
    poll = expand(pol1*(s+p(root)));
    pol1 = poll;
end
    
P = poll

end