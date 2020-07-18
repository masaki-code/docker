# 保存した訓練データの読み込み
# ファイル名：my_model.h5
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

score = model.evaluate(x_test, y_test, verbose=0)

print('Test loss:', score[0])
print('Test accuracy:', score[1])
