# venver

Shortcuts for Python virtual environments

Easily create, switch, and delete Python virtual environments
on the command line.

# Install

Requires Bash shell, Git, and Python of course.

The install script adds lines to the user's ~/.bashrc file
and creates `.venv` in the home directory.
Doesn't need root privilege.

```
git clone https://github.com/agentlans/venver
cd venver
chmod +x *ve *.sh # Make the scripts executable
./SetupVenver.sh # to install
./RemoveVenver.sh # to remove the program
```

# Use

- `mkve foo bar` to create the Python environments "foo" and "bar"
- `lsve` to list all the Python environments created by Venver
- `cdve foo` to activate the "foo" environment
- `pwve` to print the current environment
- `cdve` to deactivate the current environment
- `rmve foo bar` to remove the "foo" and "bar" environments

# Author, Licence

Copyright :copyright: 2022 Alan Tseng

GNU General Public License 3
