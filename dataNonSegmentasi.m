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
  index = 0;
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
    citra    = imread(files(i).name);

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
    fitur(i,13) = label;
  end
  end
