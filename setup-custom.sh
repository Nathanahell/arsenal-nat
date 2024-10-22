#! /bin/bash

echo "[+] Create the following :
- Virtual env in the current directory : $(pwd), (use prefferabily the repository folder)
  - Install requirements.txt
- Function to run arsenal-nat at the end of the .zshrc file\n"

read -p "[+] Which shell do you use ?
1 : Bash 
2 : Zsh
" shell_number

if [[ $shell_number == "1" ]]; then
	shell="bash"
	rc=".bashrc"
elif [[ $shell_number == "2" ]]; then
	shell="zsh"
	rc=".zshrc"
else
	echo "[+] Incorrect shell. Exiting\n"
	exit
fi

python -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
deactivate

cur_dir=$(pwd)
echo "
# Arsenal custom version set-up
#####
function ac() {
	source $cur_dir/venv/bin/activate
	$cur_dir/run
	deactivate
}
" >>$HOME/$rc

source $rc
