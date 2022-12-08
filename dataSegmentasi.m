clear;
pkg load io;
pkg load image;

myFolder1 = 'D:\TUGAS VEROL\Materi Kuliah Smstr 5\Pemrosesan Citra\Proyek\setengah matang';
myFolder2= 'D:\TUGAS VEROL\Materi Kuliah Smstr 5\Pemrosesan Citra\Proyek\mentah';
myFolder3= 'D:\TUGAS VEROL\Materi Kuliah Smstr 5\Pemrosesan Citra\Proyek\matang';

filepattern1 = fullfile(myFolder1, '*.jpg');
filepattern2 = fullfile(myFolder2, '*.jpg');
filepattern3 = fullfile(myFolder3, '*.jpg');

fitur=zeros(18,13);

for P=1:3
  label= "";
  index = 1;
  if P == 1
    files = dir(filepattern1);
    label = 1;
  elseif P == 3
    files = dir(filepattern2);
    label = 2;
  else
    files = dir(filepattern3);
    label = 3;
  endif

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

    fitur(index,1) = meanR;
    fitur(index,2) = meanG;
    fitur(index,3) = meanB;
    fitur(index,4) = varR;
    fitur(index,5) = varG;
    fitur(index,6) = varB;
    fitur(index,7) = skewR;
    fitur(index,8) = skewG;
    fitur(index,9) = skewB;
    fitur(index,10) = kurtR;
    fitur(index,11) = kurtG;
    fitur(index,12) = kurtB;
    fitur(index,13) = label;
    index++;
  end
  end
