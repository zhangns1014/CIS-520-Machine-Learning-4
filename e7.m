function []=e7(a)
accuracy_num=[2,4,6,9,15,25,43,88,264,748];
load('MNIST_train.mat');
average=mean(X_train);
[COEFF,SCORE,latent] = pca(X_train);
pixel_data=X_train(a,:)-average;

for i=1:10 
pixel_arrange=pixel_data*COEFF(:,1:accuracy_num(i))*COEFF(:,1:accuracy_num(i))';
pixel_arrange = pixel_arrange+average;
pic=reshape(pixel_arrange,28,28);
subplot(3,4,i);
imagesc(pic');
title(['' num2str(i*10) '%' 'Reconstruction']);
colormap gray;
end

