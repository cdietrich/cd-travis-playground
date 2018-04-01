#!/bin/bash
git stash
if [[ "$OSTYPE" == "darwin"* ]]; then
	sed_inplace="sed -i ''"
else
	sed_inplace="sed -i"
fi
$sed_inplace s/a/b/g lala.txt
cat lala.txt
git stash