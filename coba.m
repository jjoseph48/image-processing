## Copyright (C) 2022 Gallery
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} coba (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Gallery <Gallery@DESKTOP-JA2HA0P>
## Created: 2022-12-02

function retval = coba (input1)
clear all;
  pkg load image;

  citra = double(imread('input1'));
##  imread(input1);
##  imageAsli    = imread(pathCitra);
##  imgBiner     = im2bw(imageAsli);
##  imgB         = uint8(imgBiner);
##  [baris kolom] = size(imgBiner);

##  %cari batas atas (top)
##  for i=1 : baris
##    for j=1 : kolom
##      if imgB(i,j) == 1
##        top = baris-i;
##        break;
##      endif
##    endfor
##  end
##
##  %cari batas bawah (bottom)
##  for a=1:baris
##    for b=1 : kolom
##      if imgB(a,b) == 1
##        bottom = a;
##        break;
##      endif
##    endfor
##  end
##
##  %cari batas kiri
##  for x=1 : kolom
##    for y=1 : baris
##      if imgB(y,x) == 1
##        left = kolom-x;
##        if left == 0
##          left = 1;
##        endif
##        break;
##      endif
##    endfor
##  end
##
##  %cari batas kanan
##  for p = 1:kolom
##    for q = 1 : baris
##      if imgB(q,p) == 1
##        right = p;
##        break;
##      endif
##    endfor
##  end
##
##  citra = imageAsli(top:bottom,left:right,:);
##  [barisBaru kolomBaru, keping]=size(citra);
##
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
