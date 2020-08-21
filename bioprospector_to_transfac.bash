#!/bin/bash
while getopts i:o: option; do
		case "${option}" in
			i) INFILE=${OPTARG};;
			o) OUTFILE=${OPTARG};;
		esac
	done

sed '/*.*$/d' $INFILE | sed '/^Try.*$/d' | sed 's/Blk[0-9]*/P0/g' | sed '/^[ATGC>].*/d' | sed 's/^Width.*$/BF species_placeholder/g' | sed 's/Motif/ID Motif/g' | sed -e "s/ #//g" | sed 's/: (//g' | sed 's/[/]/_/g' | sed 's/)//g' | sed -E 's/[[:space:]]+/\t/g' | cut -f1-6 | sed 's/Con//g' | sed 's/\.//g' | sed 's/000/0/g' | sed '/^[[:space:]]*$/d' | sed -e 's|ID|XX\n//\nID|g' | sed '1,2d' | sed -e 's/ID\t/ID /g' | sed -e 's/BF\t/BF /g' | sed '$ a XX' | sed '$ a //' | sed -E 's/^1/01/g' | sed -e 's/^2/02/g' | sed 's/^3/03/g' | sed 's/^4/04/g' | sed 's/^5/05/g' | sed 's/^6/06/g' | sed 's/^7/07/g' | sed 's/^8/08/g' | sed 's/^9/09/g' | sed 's/^010/10/g' | sed 's/^020/20/g' | sed 's/^030/30/g' | sed 's/^040/40/g' | sed 's/^050/50/g' | sed 's/^060/60/g' | sed 's/^070/70/g' | sed 's/^080/80/g' | sed 's/^090/90/g' > $OUTFILE
