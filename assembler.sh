#!/bin/bash

fileName="${1%%.*}" # remove .s extension

nasm -f elf64 ${fileName}".s"
ld ${fileName}".o" -o ${fileName}
[ "$2" == "-g" ] && gdb -q ${fileName} || ./${fileName}

# Now we can write this script to assembler.sh, chmod +x it, and then run it on our assembly file. It will assemble it, link it, and run it:
# ./assembler.sh helloWorld.s