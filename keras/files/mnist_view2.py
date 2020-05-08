import keras
from keras.datasets import mnist
import numpy as np
from PIL import Image

# 文字画像表示
def img_show(img):
    pil_img = Image.fromarray(np.uint8(img))
    pil_img.show()

# Kerasの関数でデータの読み込み。データをシャッフルして学習データと訓練データに分割
(x_train, y_train), (x_test, y_test) = mnist.load_data()

# MNISTの文字画像を読み出して表示
num = 4
for i in range(num):
    img_show(x_train[i].reshape(28, 28))
