#!/usr/bin/bash

# Remove the part added to bashrc
sed -E -i '/Added by SetupVenver\.sh/,/End section added by SetupVenver\.sh/d' ~/.bashrc
# Remove the scripts directory
rm -rf ~/.venv/.scripts

echo "Do you want to delete all the virtual environments in ~/.venv ?"
select yn in "Yes" "No"; do
	case $yn in
		Yes) # Delete all the virtual environments
			rm -rf ~/.venv/; break ;;
		No) break;;
	esac
done

echo "Done. Now restart the shell to finish uninstall."

