esearch -db sra -query PRJNA292720 | efetch -format runinfo | cut -d, -f1 | tail -n+2 | while read acc ; do bash ./download.sh $acc ; done
