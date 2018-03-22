
input_file=$1

ebook-convert $1 b.txt 
sed -i -e 's/^$/\;/' b.txt
pandoc -S -o b.tex b.txt
pdflatex book.tex
