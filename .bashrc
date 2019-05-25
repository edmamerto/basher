#bashrc stuff

cd () {
	builtin cd "$@"
	if [[ "$PWD" =~ __PERSONAL ]]; 
	then
		`git config --global user.name "Ed Mamerto"`
		`git config --global user.email $PERSONAL_EMAIL`
	else
	   	`git config --global user.name "Edgar Mamerto"`
		`git config --global user.email $OTHER_EMAIL`
	fi
}