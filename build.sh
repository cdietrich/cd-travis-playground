#!/bin/bash
git stash
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "mac"
	sed_inplace="''"
else
	echo "linux"
	sed_inplace=""
fi
echo "sed -i $sed_inplace s/a/b/g lala.txt"
sed -i $sed_inplace s/a/b/g lala.txt
ls -la
cat lala.txt
rm "lala.txt''"
sed -i '' s/a/b/g lala.txt
ls -la
git stash