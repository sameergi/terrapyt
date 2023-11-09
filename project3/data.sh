#!/bin/bash
sudo apt update
sudo apt-get install python3-pip -y
git clone https://github.com/sameergi/flask-library-app-sam.git
cd flask-library-app-sam/
pip3 install -r requirements.txt
screen -m -d python3 app.py
