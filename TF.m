pkg load image
close all

I = imread('Image151.jpg');
I = rgb2gray(I);
I = double(I)/max(max(double(I)));


T = [0.21, 0.07, 0.225, 0.236, 0.162, 0.574, 0.637, 0.364 0.69741, 0.0056, 0.725, 0.8521, 0.4523, 0.0235, 0.1785, 0.942];

M = [0.3548, 0.245, 0.98451, 0.851, 0.3548, 0.245, 0.98451, 0.851; 0.879654, 0.45151, 0.3548, 0.14785, 0.3548, 0.245, 0.98451, 0.851; 0.78, 0.124, 0.6324, 0.985, 0.3548, 0.245, 0.98451, 0.851;0.3548, 0.245, 0.98451, 0.851,  0.1452, 0.2563, 0.34785, 0.6325];

R = rand(8,8);

R1 = rand(1,16);

################################## 1D naive

%{
P = TFD1D(R1);

F = fft(R1);

figure
imshow(P);

figure
imshow(F);

%}


################################### 1D inverse naive

%{
P = fft(R1);

F = ifft(P);

U = TFRI1D(P);

figure
imshow(F);

figure
imshow(U);

%}


################################### 2D naive

%{
P = fft2(R);

F = TFD2D(R);


figure
imshow(P);

figure
imshow(F);

%}

################################## 2D inverse naive

%{
P = fft2(R);

F = ifft2(P);

U = TFDI2D(P);

figure
imshow(F);

figure
imshow(U);
%}




################################## 1D rapide

%{
P = fft(R1);

F = TFR1D(R1);

figure
imshow(P);

figure
imshow(F);
%}

################################## 1D rapide inverse

%{
P = fft(R1);

F = TFRI1D(P);

Q = ifft(P);

figure
imshow(F);

figure
imshow(Q);
%}


##################################  2D rapide


P = fft2(R);

F = TFR2D(R);


figure
imshow(P);

figure
imshow(F);



################################# 2D rapide inverse

%{
P = fft2(R);

F = ifft2(P);

U = TFRI2D(P);


figure
imshow(R);

figure
imshow(F);

figure
imshow(U);

%}

