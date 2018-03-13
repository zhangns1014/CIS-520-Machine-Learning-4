load('MNIST_train.mat');
[COEFF,SCORE,latent] = pca(X_train);
 x_label=1:784;
 accuracy=zeros(1,784);
 for i =1:784
 accuracy(i)=sum(latent(1:i))/sum(latent);
 end
 plot(x_label,accuracy,'b*');
 xlabel('#principal components');
 ylabel('reconstruction accuracy');
 title('7(d)Plot');