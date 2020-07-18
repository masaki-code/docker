# work
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

from models.my_keras import MyMnist as mnist
from models.my_keras import MyModelFromFile as model

print(":: --- load_data ---")
mnist = mnist()
mnist.load_data()
mnist.reshape()
mnist.to_categorical()

print(":: --- model ---")
model = model()
model.summary()

print(":: --- fit ---")
model.evaluate(mnist)
