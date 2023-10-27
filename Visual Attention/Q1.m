 %%
 clc;clear all;
 close all
[fix, suc, siz, img]  = showEyeData('../DATA/hp', '../ALLSTIMULI');
%%
%% showEyeDataAcrossUsers('../ALLSTIMULI', 6)
%%
H = load ('E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\i05june05_static_street_boston_p1010764');
%%
C = H.i05june05_static_street_boston_p1010764.DATA.eyeData;


%%
        imshow(img); hold on;
        plot(suc(:,1),suc(:,2),'r.','MarkerSize',14); %Plot all data points (red dots)
        hold on;
        plot(fix(:,1),fix(:,2),'y.','MarkerSize',14); %Plot all fixations (yellow dots)
        hold on;
%         
% 
plot(C(361:end,1),C(361:end,2),'b.','MarkerSize',6 )
xlim([0 inf])
ylim([0 760])
% %  