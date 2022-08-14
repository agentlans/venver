#!/usr/bin/bash

if [ -f ~/.bashrc ]; then
	grep SetupVenver.sh ~/.bashrc
	if [ $? -ne 0 ]; then
		echo "Creating new entry in ~/.bashrc ..."
		# Write the commands
		echo "# Added by SetupVenver.sh" >> ~/.bashrc
		echo "export VENV=~/.venv" >> ~/.bashrc
		echo 'export PATH=$PATH:~/.venv/.scripts' >> ~/.bashrc
		# Special subshell command
		echo 'alias cdve=". ~/.venv/.scripts/cdve"' >> ~/.bashrc
		echo "# End section added by SetupVenver.sh" >> ~/.bashrc
	fi
fi

if [ ! -d ~/.venv ]; then
	echo "Creating ~/.venv in user's home directory..."
	mkdir -p ~/.venv/.scripts
fi
echo "Copying scripts..."
cp *ve ~/.venv/.scripts
echo "Finished. Now restart your shell to use Venver."


# source ~/.bashrc

