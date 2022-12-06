function skew = hitungSkewness (citra,miu, vari)
  [m n] = size(citra);
  sumS=0;
  for i=1:m
    for j=1:n
      piksel = double(citra(i,j));
      sumS = sumS + (piksel-miu)^3;
    endfor
  end
  skew = sumS / m*n*(vari^3);
  endfunction
