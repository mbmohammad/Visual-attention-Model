clc; clear all; close all;
load Yale_64x64
r = randperm(165, 10);
IMAGES = zeros(64,64,10);
for i = 1 : 10
    X = reshape(fea(r(i),:),64,64)';
    mX = bsxfun(@minus,X,mean(X)); %remove mean
fX = fft(fft(mX,[],2),[],3); %fourier transform of the images
spectr = sqrt(mean(abs(fX).^2)); %Mean spectrum
wX = ifft(ifft(bsxfun(@times,fX,1./spectr),[],2),[],3); %whitened X
    IMAGES(:,:,i) = wX;
end
figure(1), colormap(gray)
A = rand(169,64)-0.5;
A = A*diag(1./sqrt(sum(A.*A)));
figure(1), colormap(gray)

