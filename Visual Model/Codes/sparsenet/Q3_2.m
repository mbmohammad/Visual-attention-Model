SS = zeros(100,100, 109);
SS(:,:,1) = S;
for m = 11 : 118
t
    % choose an image for this batch
    
    this_image=IMAGES(:,:,m);
    
    % extract subimages at random from this image to make data vector X
    
    for i=1:batch_size
        r=BUFF+ceil((image_size-sz-2*BUFF)*rand);
        c=BUFF+ceil((image_size-sz-2*BUFF)*rand);
        X(:,i)=reshape(this_image(r:r+sz-1,c:c+sz-1),L,1);
    end
    
    % calculate coefficients for these data via conjugate gradient routine
    
    S=cgf_fitS(A,X,noise_var,beta,sigma,tol);
    SS(:,:,m-9) = S;

    % calculate residual error
    
    E=X-A*S;
    
    % update bases
    
    dA=zeros(L,M);
    for i=1:batch_size
        dA = dA + E(:,i)*S(:,i)';
    end
    dA = dA/batch_size;
    
    A = A + eta*dA;
    
    % normalize bases to match desired output variance
    
    for i=1:batch_size
        S_var = (1-var_eta)*S_var + var_eta*S(:,i).*S(:,i);
    end
    gain = gain .* ((S_var/VAR_GOAL).^alpha);
    normA=sqrt(sum(A.*A));
    for i=1:M
        A(:,i)=gain(i)*A(:,i)/normA(i);
    end
    
    % display
    
%     if (mod(t,display_every)==0)
%         display_network(A,S_var,h);
%     end
    
end
%%
figure
for k = 1:size(SS,3)
    k
	h = heatmap(reshape(SS(:,:,k),100,100))
XLabels = 1:100;
YLabels = 1:100;
% Convert each number in the array into a string
CustomXLabels = string(XLabels);
CustomYLabels = string(YLabels);
% Replace all but the fifth elements by spaces
CustomXLabels(mod(XLabels,5) ~= 0) = " ";
CustomYLabels(mod(XLabels,5) ~= 0) = " ";
% Set the 'XDisplayLabels' property of the heatmap 
% object 'h' to the custom x-axis tick labels
h.XDisplayLabels = CustomXLabels;
h.YDisplayLabels = CustomYLabels;
title("Coefficients of matrix of basis functions, A")
    pause(0.25)
end













