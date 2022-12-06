function mean = hitungMean (citra)
[m n] = size(citra);
sum  = 0;

for i=1:m
  for j=1:n
    sum = sum + double(citra(i,j));
  endfor
end

mean = sum / (m*n);
endfunction
