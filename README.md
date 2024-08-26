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

After the installation you should set a few things manually:

### 1.1. Git user

```bash
git config --global user.email "youradresse"
git config --global user.name "yourname"
```

### 1.2. SSH Key

Create a Key (Github / Gitlab)

```bash
ssh-keygen -t rsa -b 4096 -C "github"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

## 2. Partial install

### 2.1. Standard packages

```bash
./install_apt.sh
```

### 2.2. ZSH

Add ZSH with plugins + power10k

```bash
./install_zsh.sh
```

### 2.3. Softwares

```bash
./install_software.sh
```

### 2.4. Docker

```bash
./install_docker.sh
```

### 2.5. 4 Theme

```bash
./install_theme.sh
```

## 3. Optional

### 3.1. ROS

```bash
./install_ros.sh
```

## 4. Update GNOME configuration

> Run the commands from this folder

Save the current configuration

```bash
dconf dump / > ./theme/gnome_settings.dconf
```

Load the configuration

```bash
dconf load / < ./theme/gnome_settings.dconf
```
