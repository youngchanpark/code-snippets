find notebooks_dir -type f -name "*.ipynb" ! -name "*checkpoint*" |
while read f
do
	echo $f
	grep ".sum" "$f" 
done | less
