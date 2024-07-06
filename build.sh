#!/bin/bash

cacheburst=$(date +%s%N)
curl "https://storage.gmodwiki.com/categories/parsed/all.zip?burst=$cacheburst" -o ./parsed/all.zip
unzip -d ./parsed/ ./parsed/all.zip

npm run build_annotations
