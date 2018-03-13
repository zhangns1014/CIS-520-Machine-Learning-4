function [latent]=plot_c(digit_num,a,b)%principal axis
load('MNIST_train.mat');
X_num=X_train((Y_train==digit_num+1),:);
[COEFF,SCORE,latent] = pca(X_num);
 first=SCORE(:,a);
 second=SCORE(:,b);
plot(first,second,'*b');
xlabel([num2str(a) 'PC dimension']);
ylabel([num2str(b) 'PC dimension']);
title(['digit=' num2str(digit_num)]);
end