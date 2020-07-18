import keras

class MyNumbers:
    """my class"""

    def __init__(self, y):
        self.y = y

    def _trim(self, x):
        if x < 0.1:
            return 0
        else:
            return x

    def value(self):
        return self.y

    def trimValue(self):
        return list(map(self._trim, self.y))

    def resultNumber(self):
        max = 0
        i = 0
        r = 0
        for num in self.y:
            if max < num:
                max = num
                r = i
            i = i + 1

        return (r, max)

class MyModelCommon:
    """my class"""

    num_classes = 10
    batch_size = 128
    epochs = 20
    __verbose_fit = 1
    __verbose_evaluate = 0

    def compile(self):
        from keras.optimizers import RMSprop
        self.model.compile(loss='categorical_crossentropy',
                      optimizer=RMSprop(),
                      metrics=['accuracy'])
    def fit(self, mnist):
        self.model.fit(mnist.x_train, mnist.y_train,
            batch_size=self.batch_size,
            epochs=self.epochs,
            verbose=self.__verbose_fit,
            validation_data=(mnist.x_test, mnist.y_test))

    def evaluate(self, mnist):
        score = self.model.evaluate(mnist.x_test, mnist.y_test,
            verbose=self.__verbose_evaluate)
        print('Test loss:', score[0])
        print('Test accuracy:', score[1])

    def save(self, name = 'my_model.h5'):
        self.model.save(name)

    def summary(self):
        self.model.summary()

    def predict(self, x):
        x = x.reshape(1, 784)
        predict = self.model.predict(x, batch_size=None, verbose=0, steps=None)
        return predict[0]


class MyModel(MyModelCommon):
    def __init__(self):
        from keras.models import Sequential
        from keras.layers import Dense, Dropout

        model = Sequential()
        model.add(Dense(512, activation='relu', input_shape=(784,)))
        model.add(Dropout(0.2))
        model.add(Dense(512, activation='relu'))
        model.add(Dropout(0.2))
        model.add(Dense(self.num_classes, activation='softmax'))
        self.model = model

class MyModelFromFile(MyModelCommon):
    """my class"""

    def __init__(self, name = 'my_model.h5'):
        from keras.models import load_model
        self.model = load_model(name)

class MyMnist:
    """mnist wrapper"""

    num_classes = 10

    def load_data(self):
        from keras.datasets import mnist
        (x_train, y_train), (x_test, y_test) = mnist.load_data()
        self.x_train = x_train
        self.y_train = y_train
        self.x_test = x_test
        self.y_test = y_test

    def reshape(self):
        # -------------
        # x_train
        # -------------
        x_train = self.x_train
        x_train = x_train.reshape(60000, 784)
        x_train = x_train.astype('float32')
        x_train /= 255
        self.x_train = x_train

        # -------------
        # x_test
        # -------------
        x_test = self.x_test
        x_test = x_test.reshape(10000, 784)
        x_test = x_test.astype('float32')
        x_test /= 255
        self.x_test = x_test

    def to_categorical(self):
        self.y_train = keras.utils.to_categorical(self.y_train, self.num_classes)
        self.y_test = keras.utils.to_categorical(self.y_test, self.num_classes)

    def sample(self):
        import random
        min = 0
        max = len(self.x_test)-1
        i = random.randint(min, max)
        x = self.x_test[i]
        y = self.y_test[i]
        return (x, y, i)
