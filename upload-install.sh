#!/bin/bash
echo "Filename: $1"
echo "Username: $2"
echo "Password: $3"
echo "Server and Port: $4"
echo "Packages Location: $5"

filename=$1
server=$2
username=$3
password=$4
packagesLocation=$5

  while read line; do
    for (( p=0; p < ${#line[*]}; p++))
    do
      package="$( cut -d ';' -f 1 <<< "${line[p]}" )";
      group="$( cut -d ';' -f 2 <<< "${line[p]}" )";
      echo 'Package to Upload and Install:' $package 'from group' $group
      curl -u $username:$password -F cmd=upload -F force=true -F package=@$packagesLocation$package $server/crx/packmgr/service/.json
      echo ''
      echo 'Upload Done'
      curl -u $username:$password -F cmd=install $server/crx/packmgr/service/.json/etc/packages/$group/$package
      echo ''
      echo 'Installation Done'
    done

done < $filename