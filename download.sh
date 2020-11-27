accession=$1
ref=/data/genomics/refs/hg19.fa
threads=10

prefetch $accession

cd $accession
fastq-dump ${accession}.sra --split-files

bwa mem $ref ${accession}_1.fastq ${accession}_2.fastq -o ${accession}.sam -t $threads
samtools view -b ${accession}.sam -o ${accession}.bam

samtools sort ${accession}.bam -o ${accession}.sorted.bam

samtools index ${accession}.sorted.bam
