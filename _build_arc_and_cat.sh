#!/usr/bin/bash 

rm -r "archive"
rm -r "category"
echo "Cleaning any previous jekyll build"
bundle exec jekyll clean
echo "Starting jekyll build, it will take a while (ca. 90 seconds)"
bundle exec jekyll build -c _dev_config.yml
echo "Done, copying folder"
mv "_site/archive/" "."
mv "_site/category/" "."
echo "Cleaning up"
bundle exec jekyll clean