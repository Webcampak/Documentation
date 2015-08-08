echo "French: Delete previous Docbook HTML file"
rm fr/*
echo "French: Create new Docbook HTML files"
xmlto -v html -m stylesheet.xsl Webcampak-doc-fr.xml -o fr/
rm fr/*.proc
echo "---------------------------------------------"

echo "English: Delete previous Docbook HTML file"
rm en/*
echo "English: Create new Docbook HTML files"
xmlto -v html -m stylesheet.xsl Webcampak-doc-en.xml -o en/
rm en/*.proc

