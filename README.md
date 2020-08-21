# convert-bioprospector-to-transfac

Convert the output of [BioProspector](http://ai.stanford.edu/~xsliu/BioProspector/), the motif discovery algorithm, into a Transfac format that can be subsequently converted to MEME motif format

The popular motif discovery algorithm BioProspector outputs its results in a pseudo [Transfac motif format](http://meme-suite.org/doc/transfac-format.html) that is incompatible with many downstream analysis tools for motif discovery. This script will convert the output into a true Transfac motif format, which can then be converted to MEME motif format with the [transfac2meme tool](http://meme-suite.org/doc/transfac2meme.html) in MEME suite if desired.

This script will theoretically work on a BioProspector output containing any number of motifs, including just one.

## USAGE

For example:

`./bioprospector_to_transfac.bash -i example.bioprospector -o example.transfac`

will take the BioProspector output file `example.bioprospector`, convert the results to transfac format, and output the results to `example.transfac`. If you have MEME suite installed, then you can convert this file to MEME motif format with:

`transfac2meme example.transfac > example.meme`

The `example.meme` file can be easily input into [MEME suite tools](http://meme-suite.org/index.html).

## DEPENDENCIES

If your computer can run `sed` then it should be able to run this script. I tested it BioProspector Release 2 (2004) and MEME suite v5.1.1.

