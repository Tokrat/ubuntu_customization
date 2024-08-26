#!/bin/sh

echo '\n >> Installing standard packages'

sudo apt -y update && sudo apt install -y \
    zsh git curl wget caffeine \
    clang-format clang-tidy \
    cmake libgtest-dev