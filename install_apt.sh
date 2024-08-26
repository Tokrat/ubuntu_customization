#!/bin/sh

echo '\n >> Installing standard packages'

sudo apt-get -y update && sudo apt-get install -y \
    zsh git curl wget \
    clang-format clang-tidy \
    cmake libgtest-dev