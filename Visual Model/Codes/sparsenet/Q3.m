% clc;clear all;close all;
% v = VideoReader('BIRD.AVI');
% frame = im2double(read(v));
% ALLIMAGES = zeros(size(frame, 1), size(frame, 2), size(frame, 3));
% for i = 1 : size(frame, 4) 
%     ALLIMAGES(:,:,i) = im2gray(frame(:,:,i));
% end
% %%
% IMAGES = zeros(size(frame, 2),size(frame, 1),10);
% for i = 1 : 10
%     X = reshape(ALLIMAGES(:,:, i),size(frame, 1),size(frame, 2))';
%     mX = bsxfun(@minus,X,mean(X)); %remove mean
% fX = fft(fft(mX,[],2),[],3); %fourier transform of the images
% spectr = sqrt(mean(abs(fX).^2)); %Mean spectrum
% wX = ifft(ifft(bsxfun(@times,fX,1./spectr),[],2),[],3); %whitened X
%     IMAGES(:,:,i) = wX;
% end
% figure(1), colormap(gray)
% A = rand(256,64)-0.5;
% A = A*diag(1./sqrt(sum(A.*A)));
% figure(1), colormap(gray)
% %%
% for i = 1 : 10
%    figure
%    imshow(ALLIMAGES(:,:,i))
% end
% 
% 
% 
% 
% 
% 
%%
% clc;clear all;close all;
load Bird_Frames_dewhited
A = rand(64, 100)-0.5;
A = A*diag(1./sqrt(sum(A.*A)));
figure(1), colormap(gray)
% IMAGES = IMAGES(:,:,1:10);
