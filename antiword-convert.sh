#!/bin/bash

# antiword script for converting doc files to txt
# recursively finde .doc file
# convert using antiword then remove the file when successful

find . -name '*.doc' | while read i; do
antiword -i 1 "${i}" > "${i/doc/txt}" && rm "${i}";
done
