clear all;
A = imread('girl.bmp');
imshow(A);
[m n] = size(A);

B = zeros(1,256);%用来绘制直方图

for i = 1:m
    for j =1:n
        B(A(i,j)+1) = B(A(i,j)+1) + 1;
    end
end

for k = 1:256
    B(k) = B(k)/m/n;
end

figure,bar(1:256,B,'g');                 %绘制原直方图
title('原图像直方图')
xlabel('灰度值')
ylabel('出现概率')
axis([0,256,0,0.025])


C = zeros(1,256);
C = cumsum(B);

D = zeros(1,256);
for k = 1:256
    D(k) = floor(C(k)*255+0.5);
end

for i = 1:m
    for j = 1:n
        A(i,j) = D(A(i,j)+1);
    end
end
figure,imshow(A);
imwrite(A,'girl12.bmp');
E = zeros(1,256);
for i = 1:m
    for j =1:n
       E(A(i,j)+1) = E(A(i,j)+1) + 1;
    end
end

for k = 1:256
    E(k) = E(k)/m/n;
end

figure,bar(1:256,E,'g');                 %绘制新直方图
title('新图像直方图')
xlabel('灰度值')
ylabel('出现概率')
axis([0,256,0,0.025])

            