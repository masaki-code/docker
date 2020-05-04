FROM ubuntu:latest

RUN apt-get update && apt-get -y install vim less
RUN apt-get update && apt-get -y install python3-dev python3-pip
RUN pip3 install -U virtualenv && virtualenv --system-site-packages -p python3 ./venv
RUN . ./venv/bin/activate && /venv/bin/pip install --upgrade pip && /venv/bin/pip install --upgrade tensorflow-cpu && /venv/bin/pip install --upgrade keras
RUN mkdir /home/keras

