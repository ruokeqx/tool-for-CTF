#!/bin/bash
# 换源
rm /etc/apt/sources.list
echo "deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
echo "deb-src https://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt-get update
apt-get upgrade -y
# base
apt-get install -y python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
# pip
apt-get install -y python-pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install opencv-python --timeout=1000
pip install matplotlib
# mkdir
mkdir /root/Desktop/ctf
cd /root/Desktop/ctf
# foremost
apt-get install -y foremost
# imagemagick(convert)
apt-get install -y imagemagick
# exiftool
apt-get install -y exiftool
# steghide
apt-get install -y steghide
# 盲水印
git lone https://github.com/chishaxie/BlindWaterMark
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
