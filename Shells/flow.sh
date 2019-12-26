#!/bin/bash
# while do done
# while [ -z $input ] || [ $input != 'yes' ]
# do
#   read -p "猪Say:" input
# done


#  for in

# fs=`ls $HOME`
# for one in $fs
# do
#   echo "File: $one"
# done


ls(){
  echo "this is over commond ls"
  # 执行系统命令
  command ls -la
}

ls