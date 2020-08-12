#!/bin/bash

for i in ${@:2}
do
    arch=$i
    tag_arch=treehouses/novnc-tags:$arch
    tag_time=$(date +%Y%m%d%H%M)
    tag_arch_time=treehouses/novnc-tags:$arch-$tag_time
    echo $tag_arch_time
    docker tag $tag_arch $tag_arch_time
    docker push $tag_arch_time
    docker tag $tag_arch_time $tag_arch
done

for i in ${@:2}
do
    arch=$i   # arm arm64 amd64
    tag_arch=treehouses/novnc-tags:$arch
    docker push $tag_arch
done