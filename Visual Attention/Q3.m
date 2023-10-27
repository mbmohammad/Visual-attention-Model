%%
% clc;
% clear all;
% close all;
%%


% imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\i05june05_static_street_boston_p1010785.jpeg';
% sMap = saliency(8, imagefile);
% H = load ('E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\i05june05_static_street_boston_p1010785');
% C = H.i05june05_static_street_boston_p1010785.DATA.eyeData;
% a = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );

%%
folderpath = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI'; 
filelist = dir(folderpath);
name1 = {filelist.name};
name1 = name1(5:end-4);
filee ='E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\';
filelist = dir(filee);
name2 = {filelist.name};
name2 = name2(4:end-4);
%%
% a1 = zeros(1, 100);
% a2 = zeros(1, 100);
% a3 = zeros(1, 100);
% a4 = zeros(1, 100);
% a5 = zeros(1, 100);
% a6 = zeros(1, 100);
% a7 = zeros(1, 100);
% a8 = zeros(1, 100);
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(1, imagefile);
    a1(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(2, imagefile);
    a2(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(3, imagefile);
    a3(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(4, imagefile);
    a4(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(5, imagefile);
    a5(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(6, imagefile);
    a6(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(7, imagefile);
    a7(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(8, imagefile);
    a8(i) = rocScoreSaliencyVsFixations( sMap , C(1:360,1) , C(1:360,2) , [size(sMap,1) size(sMap,2)] );
end

a11 = zeros(1, 100);
a21 = zeros(1, 100);
a31 = zeros(1, 100);
a41 = zeros(1, 100);
a51 = zeros(1, 100);
a61 = zeros(1, 100);
a71 = zeros(1, 100);
a81 = zeros(1, 100);
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(1, imagefile);
    a11(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(2, imagefile);
    a21(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(3, imagefile);
    a31(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(4, imagefile);
    a41(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(5, imagefile);
    a51(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(6, imagefile);
    a61(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(7, imagefile);
    a71(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
for i = 1 : 100
    string(name1(i))
    string(name2(i))
    imagefile = 'E:\UNI\advanced neuro\HW8\Eye tracking\ALLSTIMULI\' + string(name1(i));
    filee = 'E:\UNI\advanced neuro\HW8\Eye tracking\DATA\hp\' + string(name2(i));
    H = load (filee);
    newStr = erase( string(name2(i)) , '.mat' );
    C = H.(newStr).DATA.eyeData;
    sMap = saliency(8, imagefile);
    a81(i) = rocScoreSaliencyVsFixations( sMap , C(360:end,1) , C(360:end,2) , [size(sMap,1) size(sMap,2)] );
end
%%
figure
x = 1 : 8;
plot(x, [mean(a1), mean(a2), mean(a3), mean(a4), mean(a5), mean(a6), mean(a7), mean(a8)],'lineWidth', 2);
hold on;
plot(x, [mean(a11), mean(a21), mean(a31), mean(a41), mean(a51), mean(a61), mean(a71), mean(a81)],'lineWidth', 2);

legend('bottom-up','top-down')
xlabel('number of feature')
ylabel('ROC')



