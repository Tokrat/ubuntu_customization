#!/bin/sh

echo '\n >> Installing ROS\n'

locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

sudo apt install -y software-properties-common
sudo add-apt-repository -y universe

sudo apt update && sudo apt -y install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install dev tools + ROS 2 Jazzy
sudo apt update && sudo apt upgrade && sudo apt install -y ros-dev-tools ros-jazzy-desktop

# Add ROS to zshrc
echo "source /opt/ros/jazzy/setup.zsh" >> ~/.zshrc
