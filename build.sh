#!/bin/bash
git stash


sed_inplace() {
	if [[ "$OSTYPE" == "darwin"* ]]; then
		echo "mac"
		sed -i '' "$@"
	else
		echo "linux"
		sed -i "$@" 
	fi	
}

echo "sed -i $sed_inplace s/a/b/g lala.txt"
sed_inplace s/a/b/g lala.txt
ls -la
cat lala.txt
git stash