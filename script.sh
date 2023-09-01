#!/bin/bash

mkdir site1 site2 site3

git clone -b main https://gitlab.com/staskuznetsov/site.git /home/andrii/site1
git clone -b dev https://gitlab.com/staskuznetsov/site.git /home/andrii/site2
git clone -b feature https://gitlab.com/staskuznetsov/site.git /home/andrii/site3

ansible-playbook ansib.yaml

sudo rm -R site1 site2 site3
