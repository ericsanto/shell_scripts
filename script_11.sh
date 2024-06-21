#!/bin/bash

dir="/var/log"

if [[ -d "$dir" ]]; then
	tar -czvf logs.tar.gz "$dir"/*.log
fi



