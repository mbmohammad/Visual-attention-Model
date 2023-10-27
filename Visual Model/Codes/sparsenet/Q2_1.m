%%
clc;clear all;close all;
data = load('mnist_train.csv');
images = data(:,2:end);
labels = data(:, 1);
colormap gray
%%
r = randperm(60000, 10);
IMAGES = zeros(28,28,10);
for i = 1 : 10
    X = reshape(images(r(i),:),28,28)';
    mX = bsxfun(@minus,X,mean(X)); %remove mean
fX = fft(fft(mX,[],2),[],3); %fourier transform of the images
spectr = sqrt(mean(abs(fX).^2)); %Mean spectrum
wX = ifft(ifft(bsxfun(@times,fX,1./spectr),[],2),[],3); %whitened X
    IMAGES(:,:,i) = wX;
end
%%
A = rand(64, 169)-0.5;
A = A*diag(1./sqrt(sum(A.*A)));
figure(1), colormap(gray)

