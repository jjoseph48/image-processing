function [meanR, meanG, meanB] = hitungMean (citra)
  [m n] = size(citra);
  citraR = citra(:,:,1);
  citraG = citra(:,:,2);
  citraB = citra(:,:,3);

  sumR  = 0; sumG = 0; sumB = 0;

  for i=1:m
    for j=1:n
      sumR = sumR + double(citraR(i,j));
    endfor
  end

  for i=1:m
    for j=1:n
      sumG = sumG + double(citra(i,j));
    endfor
  end

  for i=1:m
    for j=1:n
      sumB = sumB + double(citra(i,j));
    endfor
  end

  meanR = sumR / (m*n);
  meanG = sumG / (m*n);
  meanB = sumB / (m*n);

  endfunction
