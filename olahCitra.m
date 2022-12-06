function [meanR, meanG, meanB, varR, varG, varB, skewR, skewG, skewB, kurtR, kurtG, kurtB] = olahCitra(citra)
  clear all;
  pkg load image;

##  imageAsli    = imread(pathCitra);
  imgAsli      = citra;
  imgBiner     = im2bw(imageAsli);
  imgB         = uint8(imgBiner);
  [baris kolom] = size(imgBiner);

  %cari batas atas (top)
  for i=1 : baris
    for j=1 : kolom
      if imgB(i,j) == 1
        top = baris-i;
        break;
      endif
    endfor
  end

  %cari batas bawah (bottom)
  for a=1:baris
    for b=1 : kolom
      if imgB(a,b) == 1
        bottom = a;
        break;
      endif
    endfor
  end

  %cari batas kiri
  for x=1 : kolom
    for y=1 : baris
      if imgB(y,x) == 1
        left = kolom-x;
        if left == 0
          left = 1;
        endif
        break;
      endif
    endfor
  end

  %cari batas kanan
  for p = 1:kolom
    for q = 1 : baris
      if imgB(q,p) == 1
        right = p;
        break;
      endif
    endfor
  end

  citra = imageAsli(top:bottom,left:right,:);
  [barisBaru kolomBaru, keping]=size(citra);

##  citraR = citra(:,:,1);
##  citraG = citra(:,:,2);
##  citraB = citra(:,:,3);
##
##  meanR  = hitungMean(citraR);
##  meanG  = hitungMean(citraG);
##  meanB  = hitungMean(citraB);
##
##  varR   = hitungVarian(citraR,meanR);
##  varG   = hitungVarian(citraG,meanG);
##  varB   = hitungVarian(citraB,meanB);
##
##  skewR  = hitungSkewness(citraR,meanR,varR);
##  skewG  = hitungSkewness(citraG,meanG,varG);
##  skewB  = hitungSkewness(citraB,meanB,varB);
##
##  kurtR = hitungKurtosis(citraR,meanR,varR);
##  kurtG = hitungKurtosis(citraG,meanG,varG);
##  kurtB = hitungKurtosis(citraB,meanB,varB);

  endfunction
