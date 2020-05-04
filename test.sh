#!/usr/bin/env bash

for file in ./*.sh;do
	if [[ $file =~ $0 ]];then
		continue
	fi
	printf "==================== %s ====================" "$file"
	bash "$file"
	printf "-------------------- %s --------------------" "$file"
	shellcheck "$file"
done

