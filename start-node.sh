#!/bin/bash

#loading pyenv (must happen in bashrc otherwise it doesn't work for some reason)
#export PATH="/home/jim/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

#list versions you got and which one you are using
pyenv versions
#select version you want
#pyenv global 3.7.3

#run server
export FLASK_APP=node_server.py && flask run --port 8000


