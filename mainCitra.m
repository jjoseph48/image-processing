clear;
pkg load io;
pkg load image;

myFolder = 'D:\TUGAS VEROL\Materi Kuliah Smstr 5\Pemrosesan Citra\Proyek\';
filepattern = fullfile(myFolder, '*.jpg');
files = dir(filepattern);

fitur=zeros(18,12);

for i=1:length(files)
  imageAsli    = imread(files(i).name);
  imgBiner     = im2bw(imageAsli);
  imgB         = uint8(imgBiner);
  [baris kolom] = size(imgBiner);

  %cari batas atas (top)
  for s=1 : baris
    for t=1 : kolom
      if imgB(s,t) == 1
        top = baris-s;
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

  citraR = citra(:,:,1);
  citraG = citra(:,:,2);
  citraB = citra(:,:,3);

  meanR  = hitungMean(citraR);
  meanG  = hitungMean(citraG);
  meanB  = hitungMean(citraB);

  varR   = hitungVarian(citraR,meanR);
  varG   = hitungVarian(citraG,meanG);
  varB   = hitungVarian(citraB,meanB);

  skewR  = hitungSkewness(citraR,meanR,varR);
  skewG  = hitungSkewness(citraG,meanG,varG);
  skewB  = hitungSkewness(citraB,meanB,varB);

  kurtR = hitungKurtosis(citraR,meanR,varR);
  kurtG = hitungKurtosis(citraG,meanG,varG);
  kurtB = hitungKurtosis(citraB,meanB,varB);

  fitur(i,1) = meanR;
  fitur(i,2) = meanG;
  fitur(i,3) = meanB;
  fitur(i,4) = varR;
  fitur(i,5) = varG;
  fitur(i,6) = varB;
  fitur(i,7) = skewR;
  fitur(i,8) = skewG;
  fitur(i,9) = skewB;
  fitur(i,10) = kurtR;
  fitur(i,11) = kurtG;
  fitur(i,12) = kurtB;

end

