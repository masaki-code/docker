# 訓練後のデータを用いて、判定
# 保存ずみのファイル名：my_model.h5
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

import keras
from keras.datasets import mnist
num_classes = 10

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_test = x_test.reshape(10000, 784)
x_test = x_test.astype('float32')
x_test /= 255
y_test = keras.utils.to_categorical(y_test, num_classes)

from keras.models import load_model
model = load_model('my_model.h5')
model.summary()

from keras.optimizers import RMSprop
model.compile(loss='categorical_crossentropy',
              optimizer=RMSprop(),
              metrics=['accuracy'])

print('================ test ================')
x = x_test[0]
y = y_test[0]

print(x, 'x')
print(y, 'y')

print('================ test ================')
x = x.reshape(1, 784)

ret = model.predict(x, batch_size=None, verbose=0, steps=None)
print(ret[0])

ret = ret[0]

print('================ test ================')

def trim(x):
    if x < 0.1:
        return 0
    else:
        return x

trim_ret = list(map(trim, ret))
print(trim_ret, 'trim_ret')
