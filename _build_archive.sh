#!/usr/bin/bash 

DIRECTORY="archive"
if [ -d "$DIRECTORY" ]; then
  answer=""
  echo "Confirm deleting the old archive folder?"
  while [[ "$answer" != "y" && "$answer" != "n" ]]
  do
    read -rp "Your choice (y/n): " answer
  done
  if [[ "$answer" == "y" ]]
  then
    rm -r $DIRECTORY
  fi
fi
echo "Cleaning any previous jekyll build"
bundle exec jekyll clean
echo "Starting jekyll build, it will take a while (ca. 90 seconds)"
bundle exec jekyll build -c _dev_config.yml
echo "Done, copying folder"
mv "_site/archive/" "."
echo "Cleaning up"
bundle exec jekyll clean