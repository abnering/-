f = imread('lena.bmp');
figure();
imshow(f);
z = zeros(size(f));
z(:,:,1) = yuzhi(f(:,:,1));
z(:,:,2) = yuzhi(f(:,:,2));
z(:,:,3) = yuzhi(f(:,:,3));
figure();
imshow(z);
g = rgb2gray(f);
p =  yuzhi(g);
imwrite(z,'yuzhigirl.bmp');
imwrite(p,'yuzhigirlg.bmp');
figure();
imshow(p);