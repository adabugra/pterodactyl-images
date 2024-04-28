#!/bin/bash

build_tag_and_push() {
  local dir=$1
  local base_tag=$2

  docker build -t $base_tag $dir

  local java_version=$(docker run --user root --rm $base_tag java -version 2>&1 | head -n 1 | awk -F '"' '{print $2}')
  local major_version=$(echo $java_version | awk -F '.' '{print $1}')

  # if major version is 1, get the next number, since we call it 7 or 8, not 1.7 or 1.8 etc.
  if [ "$major_version" == "1" ]; then
    major_version=$(echo $java_version | awk -F '.' '{print $2}')
  fi

  local full_tag="ghcr.io/maks1116/pterodactyl-images:${base_tag}-${java_version}"
  docker tag $base_tag $full_tag
  docker tag $base_tag ghcr.io/maks1116/pterodactyl-images:${base_tag}-${major_version}

  docker push $full_tag
  docker push ghcr.io/maks1116/pterodactyl-images:${base_tag}-${major_version}
}

build_tag_and_push "$1" "$2"
