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
## @deftypefn {} {@var{retval} =} hitungKurtosis (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Gallery <Gallery@DESKTOP-JA2HA0P>
## Created: 2022-12-02

function kurt = hitungKurtosis (citra, miu, var)
  [m n] = size(citra);
  sumK=0;

  for i=1:m
    for j=1:n
      piksel = double(citra(i,j));
      sumK = sumK + ((piksel-miu)^4);
    endfor
  endfor

  kurt = (sumK / (m*n*(var^4)) - 3);
endfunction
