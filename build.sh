#!/bin/bash
git stash
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "mac"
	sed_inplace="sed -i ''"
else
	echo "linux"
	sed_inplace="sed -i"
fi
echo "$sed_inplace"
$sed_inplace s/a/b/g lala.txt
cat lala.txt
git stash