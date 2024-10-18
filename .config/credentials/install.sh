#!/bin/bash
clear
if [[ ! -d /home/batan/.cache/calendar.vim ]];
then
	mkdir /home/batan/.cache/calendar.vim
fi

if [[ ! -f /home/batan/.cache/calendar.vim/credentials.vim ]];
then
	cp /home/batan/.config/credentials.vim /home/batan.cache/calendar.vim/credentials.vim
fi

