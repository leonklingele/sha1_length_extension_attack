#!/bin/bash

##
## SHA1 Length Extension Attack using shattered.it PDFs
##
## https://shattered.it/
## https://en.wikipedia.org/wiki/Length_extension_attack
##

if [ $# != 2 ]
then
    echo "Usage: $0 \"Text One\" \"Text Two\""
    exit 1
fi

# Download the SHA1 colliding PDF documents
if [ ! -f shattered-1.pdf ]
then
    wget https://shattered.it/static/shattered-1.pdf
fi

if [ ! -f shattered-2.pdf ]
then
    wget https://shattered.it/static/shattered-2.pdf
fi

# Extract a document prefix
if [ ! -f prefix1.bin ]
then
    dd count=421552 if=shattered-1.pdf of=prefix1.bin bs=1
fi

if [ ! -f prefix2.bin ]
then
    dd count=421552 if=shattered-2.pdf of=prefix2.bin bs=1
fi

# Variable substitution to add the custom text
cp suffix.txt generated_suffix.bin
sed -i "s/REPLACEME_AAAA/$1/" generated_suffix.bin
sed -i "s/REPLACEME_BBBB/$2/" generated_suffix.bin

## Build the output PDFs

# Different prefix
cp prefix1.bin out1.pdf
cp prefix2.bin out2.pdf
# Same suffix
cat generated_suffix.bin >> out1.pdf
cat generated_suffix.bin >> out2.pdf

# Check our work
echo
echo "SHA1 hash should match"
sha1sum out*.pdf
echo 
echo "MD5 hash should not match"
md5sum out*.pdf
