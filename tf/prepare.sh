#!/bin/bash
FILE="ssh-key"
echo $SSH_KEY | base64 -d > $FILE
chmod 600 $FILE
ssh -i $FILE -o StrictHostKeyChecking=no -D 1337 -q -C -N test@163.123.195.113 &
export https_proxy=socks5://127.0.0.1:1337
