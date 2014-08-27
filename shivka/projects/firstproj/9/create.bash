#!/bin/bash

cpfind my.pto.src -o my1.pto
linefind -o my2.pto my1.pto
autooptimiser -a -m -l -s my2.pto -o my.pto
make -f my.pto.mk