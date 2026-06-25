#!/bin/bash
for i in /Users/*/.ssh; do
	cd $i
	if _="$(ssh-keygen -y -P '' -f id_ed25519 2>&1 | grep "AAAA" )"; then
		echo "success"
		exit
	else
	echo "not found or wrong passphrase"
fi
done
