function []=image_principal(i)  
load('MNIST_train.mat');
 [COEFF,SCORE,latent] = pca(X_train);
 first=COEFF(:,i);
 pic=reshape(first,28,28);
 imagesc(pic');
 colormap gray;
end