#!/bin/bash
# 换源
rm /etc/apt/sources.list
echo "deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
echo "deb-src https://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt-get update
apt-get upgrade
# base
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
# pip
apt-get install python-pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# mkdir
mkdir /root/Desktop/ctf
cd /root/Desktop/ctf
# foremost
apt-get install foremost
# imagemagick(convert)
apt-get install imagemagick
# exiftool
apt-get install exiftool
# steghide
apt-get install steghide
# outguess隐写
git clone https://github.com/crorvick/outguess
# F5隐写
git clone https://github.com/matthewgao/F5-steganography
# lsb
git clone https://github.com/livz/cloacked-pixel
# zsteg
gem sources --remove https://rubygems.org/
gem sources --add https://gems.ruby-china.com/
gem install zsteg
