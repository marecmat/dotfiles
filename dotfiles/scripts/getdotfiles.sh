#!/bin/bash
  
# Display All Hidden Dot Files In a Directory
# ls -a | egrep "^\." > backup_dotfiles.sh
 
DESTINATION="/home/mat/Documents/Projets/dotfiles/dotfiles"  # do not use a trailing slash (/)
 
# Colors
blue="\e[0;34m"
green="\e[1;32m"
red="\e[0;31m"
bold="\e[1;30m"
reset="\e[0m"
 
# file list (use trailing slash for directories)
FILES="
scripts/ 
.config/awesome/
.config/nvim/ 
.config/ranger/ 
.config/rofi/ 
.config/zsh/
.config/zsh/.zshrc
.config/vimrc
.zshenv 
.Xresources
"
# Clear the $DESTINATION directory beforehand
rm -rf $DESTINATION/

for file in $FILES
do
   #gets folder echo "$file" | rev | cut -d'/' -f2- | rev
   #gets file echo "$file" | rev | cut -d'/' -f1 | rev
   if [ -d $HOME/$file ]; then
      mkdir -p $DESTINATION/$file
      cp -f -R $HOME/$file* $DESTINATION/$file
      echo -e "$blue:: copied folder $file $reset"
   elif [ -f $HOME/$file ]; then
      cp -f $HOME/$file $DESTINATION/
      echo -e "$blue:: copied file $file $reset"
   else
      echo -e "$red:: $file is not a file/directory! $reset"
   fi     
done

mv $DESTINATION/.zshrc $DESTINATION/.config/zsh/
mv $DESTINATION/vimrc $DESTINATION/.config/vimrc

echo -e "$green:: Done! $reset"
exit 0
