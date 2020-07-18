# 参考元コードをベースに適宜ログを仕込んだもの。動作確認用。
# https://github.com/keras-team/keras/blob/master/examples/mnist_mlp.py

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
y_train = keras.utils.to_categorical(y_train, num_classes)
y_test = keras.utils.to_categorical(y_test, num_classes)

print("--- model ---")

from keras.models import Sequential
from keras.layers import Dense, Dropout

# -------
# 28 * 28 = 784
# -------

model = Sequential()
model.add(Dense(512, activation='relu', input_shape=(784,)))
model.add(Dropout(0.2))
model.add(Dense(512, activation='relu'))
model.add(Dropout(0.2))
model.add(Dense(num_classes, activation='softmax'))

print("--- model.summary ---")
# -------
# (784 +1) * 512 = 401,920
# (512 +1) * 512 = 262,656
# (512 +1) *  10 =   5,130
# -------
# 669,706
# -------

model.summary()

print("--- model.compile ---")

from keras.optimizers import RMSprop
model.compile(loss='categorical_crossentropy',
              optimizer=RMSprop(),
              metrics=['accuracy'])

print("--- model.fit ---")

batch_size = 128
epochs = 20
history = model.fit(x_train, y_train,
                    batch_size=batch_size,
                    epochs=epochs,
                    verbose=1,
                    validation_data=(x_test, y_test))

print("--- model.evaluate ---")

score = model.evaluate(x_test, y_test, verbose=0)
print('Test loss:', score[0])
print('Test accuracy:', score[1])
