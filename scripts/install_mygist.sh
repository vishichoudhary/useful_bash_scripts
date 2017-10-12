#!/bin/bash
if [ ! -d ~/.mygist ];
then
    mkdir ~/.mygist
    git clone https://github.com/vishichoudhary/mygist ~/.mygist/mygist_code
    echo "PATH=$PATH:~/.mygist/mygist_code" >> ~/.bashrc
fi
