import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

print("--- mnist.load_data ---")

from keras.datasets import mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()

print("--- reshape ---")

import keras
x_train = x_train.reshape(60000, 784)
x_test = x_test.reshape(10000, 784)
x_train = x_train.astype('float32')
x_test = x_test.astype('float32')
x_train /= 255
x_test /= 255
print(x_train.shape[0], 'train samples')
print(x_test.shape[0], 'test samples')

print("--- keras.utils.to_categorical ---")

num_classes = 10

print(y_train[0])
y_train = keras.utils.to_categorical(y_train, num_classes)

print(y_train[0])
