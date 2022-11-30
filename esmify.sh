#!/bin/bash

cat fuzzysort.js > fuzzysort.esm.js

# remove easter egg :'-(
sed -i "" "s/if(search=='farzher')return.*//" fuzzysort.esm.js 

# remove UMD block
sed -i "" 19,24d fuzzysort.esm.js

# remove bottom part
sed -i "" 546,550d fuzzysort.esm.js

# append esm export
printf "\nexport  {single, go, highlight, prepare, indexes, cleanup}" >> fuzzysort.esm.js
printf "\n" >> fuzzysort.esm.js

# sed -i "" '547i\
# export default {single, go, highlight, prepare, indexes, cleanup}' fuzzysort.esm.js
