A = zeros(256,1);
B = zeros(256,1);

for i = 1:256
    A(i) = i-1;
end

B = dec2bin(A);