#!/bin/sh

ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub pi@localhost
make clean all
make install
make install_conf
sudo cp setup/loragw.service /usr/lib/systemd/system/loragw.service
sudo systemctl start loragw.service
sudo systemctl enable loragw.service
