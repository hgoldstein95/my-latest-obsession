#!/bin/bash

mkdir -p site;
for post in $(ls posts); do
    name=${post%%.*};
    echo "<link rel='stylesheet' href='../style.css' />" > "site/$name.html";
    markdown "posts/$post" >> "site/$name.html";
done
