#!/bin/bash
if [[ -d /home/batan/.config/ranger/ ]]; then
sudo mv /home/batan/.config/ranger/ /home/batan/.config/ranger.bak.$(date +%j)
fi
sudo mv /home/batan/ranger/ /home/batan/.config/
