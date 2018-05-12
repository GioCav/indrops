mkdir -p $1

gen_dir=${1%/}
echo $gen_dir

#Download the human genome
echo 'Downloading human genome...'
curl ftp://ftp.ensembl.org/pub/release-85/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa.gz -o $gen_dir/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa.gz
echo 'Human genome downloaded'

#Download the corresponding gtf
echo 'Downloading annotations'
curl  ftp://ftp.ensembl.org/pub/release-85/gtf/homo_sapiens/Homo_sapiens.GRCh38.85.gtf.gz -o $gen_dir/Homo_sapiens.GRCh38.85.gtf.gz
echo 'DONE!'
