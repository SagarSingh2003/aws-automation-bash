#!/bin/bash
ssh -i "<pathtosshkey>" ubuntu@ec2-3-109-1-79.ap-south-1.compute.amazonaws.com << 'END'
    sudo apt update
    sudo apt install git -y
    git --version
    git clone https://github.com/SagarSingh2003/nodejs-sample.git
    cd nodejs-sample
    sudo apt install -y nodejs npm
    npm install 
    kill -9 $(lsof -t -i :3000)
    node hello.js 
END
