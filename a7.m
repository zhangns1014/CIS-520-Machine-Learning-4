load('MNIST_train.mat');
a=X_train(end,:);
pic=reshape(a,28,28);
imagesc(pic');
colormap gray;