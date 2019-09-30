#!/bin/sh

#loading pyenv
export PATH="/home/jim/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#list versions you got and which one you are using
pyenv versions
#select version you want
pyenv global 3.7.3


