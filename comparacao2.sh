#!/bin/bash

if [[ $USER == "ericj" ]] && [[ -w $HOME/.bashrc ]]; then
	vim "$HOME/.bashrc"
elif  [[ $USER != "ericj" ]]; then
	echo "Usuário não é ericj"
fi

if ! [[ -w  $HOME/.bashrc ]]; then
       echo "O usuário $USER não tem permissão de escrita"	
fi      
