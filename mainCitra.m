clear;
pkg load io;

myFolder = 'D:\TUGAS VEROL\Materi Kuliah Smstr 5\Pemrosesan Citra\Proyek\';
filepattern = fullfile(myFolder, '*.jpg');
files = dir(filepattern);

fitur=zeros(1,13);

for i=1:3
  [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12] = olahCitra(files(i).name)

  fitur(i,1) = c1;
  fitur(i,2) = c2;
  fitur(i,3) = c3;
  fitur(i,4) = c4;
  fitur(i,5) = c5;
  fitur(i,6) = c6;
  fitur(i,7) = c7;
  fitur(i,8) = c8;
  fitur(i,9) = c9;
  fitur(i,10) = c10;
  fitur(i,11) = c11;
  fitur(i,12) = c12;

end

