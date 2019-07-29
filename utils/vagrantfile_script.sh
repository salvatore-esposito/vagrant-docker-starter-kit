#!/bin/bash

vagrantfile=$basepath"/Vagrantfile"

vagrant_script_messages () {
  echo $1
  exit
}

if [ -f $vagrantfile ]; then
  read -p 'Are you sure you want to delete your Vagrantfile? (y/N)' deleteVF
  if [ -z $deleteVF ]; then
    vagrant_script_messages "VagrantFile not deleted"
  elif [ "$deleteVF" = "Y" ] || [ "$deleteVF" = "y" ]; then
    if [ ! -f "$vagrantfile" ]; then
      echo "Your vagrantfile hasn't been created yet!"
    else
      rm $vagrantfile
      vagrant_script_messages "Vagrantfile cancelled!"
    fi
  elif [ "$deleteVF" = "N" ] || [ "$deleteVF" = "n" ]; then
    vagrant_script_messages "VagrantFile not deleted"
  else
    vagrant_script_messages "This option isn't valid!"
  fi
else
  read -p 'Insert your Project name: ' projectName
fi


if [ -d "$projectName" ]; then
  vagrant_script_messages "You have to delete the directory before keep on!"
fi
mkdir $projectName

sed "s/\$projectName/$projectName/g" ./utils/VagrantTemplate > $vagrantfile

echo 'Your Project has been created!'
sleep 2
