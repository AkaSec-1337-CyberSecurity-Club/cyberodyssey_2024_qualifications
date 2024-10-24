#!/bin/sh

TMP=$(mktemp)

cp burg.bin $TMP

qemu-system-x86_64 \
    -drive format=raw,file=$TMP,if=ide \
    -serial stdio \
    -nographic \
    -monitor none \
    -m 20M
