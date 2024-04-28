#!/bin/bash

zulu_dirs=$(find zulu -mindepth 1 -maxdepth 1 -type d)
corretto_dirs=$(find corretto -mindepth 1 -maxdepth 1 -type d)
temurin_dirs=$(find temurin -mindepth 1 -maxdepth 1 -type d)

for dir in $zulu_dirs; do
  ./build.sh $dir zulu
done

for dir in $corretto_dirs; do
  ./build.sh $dir corretto
done

for dir in $temurin_dirs; do
  ./build.sh $dir temurin
done
