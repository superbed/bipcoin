#!/bin/bash
STR="0-0-0-3"

#rm -Rf ~/.bipcoin

#make it
cmake . -DSTATIC=True
make

#archive it
rm -Rf build
mkdir build
mkdir build/NicNacCoin
cp ___Read_Me_Damn_It.txt build/NicNacCoin
cp BipCoin-RadioAd-60sec-Stereo-1.mp3 build/NicNacCoin
cp StickerArtPurple1000px.png build/NicNacCoin
cp src/NicNacCoind build/NicNacCoin
cp src/connectivity_tool build/NicNacCoin
cp src/simplewallet build/NicNacCoin
cp src/walletd build/NicNacCoin
cd build
tar -cvf NicNacCoin.linux.x64.v$STR.tar  NicNacCoin/* 
gzip -9 NicNacCoin.linux.x64.v$STR.tar

