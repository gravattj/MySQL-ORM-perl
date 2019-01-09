#!/bin/bash

if [[ -f Makefile ]]; then
	make clean
fi

rm -f *.gz 
rm -f MANIFEST MANIFEST.old

perl Makefile.PL && \
make && \
make test && \
make manifest && \
make dist
