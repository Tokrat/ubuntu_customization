# Ubuntu Full Install

Install all my personnal preference for a full Ubuntu 24.04 workstation

> No script are supposed to be run as sudo

## 1. All in one

```bash
sudo apt update && sudo apt upgrade -y && \
sudo apt install -y git && \
mkdir -p ~/librairies && \
cd ~/librairies && \
git clone https://github.com/Tokrat/ubuntu_customization.git && \
cd ubuntu_customization && \
./full_install.sh
```

## 2. Partial install

### Standard packages

```bash
./install_apt.sh
```

### 2.1. ZSH

Add ZSH with plugins + power10k

```bash
./install_zsh.sh
```

### 2.2. Softwares

```bash
./install_software.sh
```

## 3. Optional

### 3.1. ROS

```bash
./install_ros.sh
```

## 4. SSH Key

Create a Key (Github / Gitlab)

```bash
ssh-keygen -t rsa -b 4096 -C "github"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```
