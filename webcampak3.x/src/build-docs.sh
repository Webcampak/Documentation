#!/bin/bash
# Build PDF and mkdocs.

hasEncodingError=false
echo "$(date +'%d %B %Y - %k:%M'): Veryfing if all MARKDOWN have no encoding issue"
for scanFile in $( find docs/ | grep md | egrep -v Eliminate ); do
   iconv -f ascii -t utf-8 -o /tmp/test ${scanFile} >> /tmp/Doc-buildlog.txt
   if [ "$?" -gt 0 ] ; then
      echo "$(date +'%d %B %Y - %k:%M'): NOK: ${scanFile} has an encoding error, to address open in vim and use :goto POSITION"
      hasEncodingError=true
   else
      echo "$(date +'%d %B %Y - %k:%M'): OK: ${scanFile} "
   fi
done

if $hasEncodingError  ; then
   echo "$(date +'%d %B %Y - %k:%M'): ERROR: Some of the files have encoding errors, not building the site"
   exit
fi

echo "$(date +'%d %B %Y - %k:%M'): Looking for User Guides"
userGuides=()
for i in $( ls *_PDF.yml ); do
   userGuides+=(${i::${#i}-8})
done
echo "$(date +'%d %B %Y - %k:%M'): Number of User Guides found: ${#userGuides[@]}"

for userGuide in "${userGuides[@]}"; do
   echo "$(date +'%d %B %Y - %k:%M'): ${userGuide}: Starting creation"
   if [ ! -d "docs/PDF/${userGuide}/" ]; then
      echo "$(date +'%d %B %Y - %k:%M'): ${userGuide}: PDF Directory does not exists, creating ..."
      mkdir docs/PDF/${userGuide}
   fi
   echo "$(date +'%d %B %Y - %k:%M'): ${userGuide}: Building pandoc document"
   mkdocs2pandoc -f ${userGuide}_PDF.yml -o docs/PDF/${userGuide}.pd
   echo "$(date +'%d %B %Y - %k:%M'): ${userGuide}: Replacing strings in pandoc document "
   /bin/sed -i -e 's/# / /g' docs/PDF/${userGuide}.pd
   /bin/sed -i -e 's/### /## /g' docs/PDF/${userGuide}.pd
   /bin/sed -i -e 's/\/site\//\/docs\//g' docs/PDF/${userGuide}.pd
   #/bin/sed -i -e "s/(images/(http:\/\/doc.webcampak.com\/"$userGuide"\/Users_Guide\/images/g" docs/PDF/${userGuide}.pd #To make images clickable in the PDF
   echo "$(date +'%d %B %Y - %k:%M'): ${userGuide}: Building PDF from pandoc document "
   /usr/bin/pandoc --listings -H theme/latex/listings-setup.tex --toc -V documentclass=report -V geometry:"top=2cm, bottom=1.5cm, left=1cm, right=1cm" -f markdown+grid_tables+table_captions docs/PDF/${userGuide}_Title.txt -o docs/PDF/${userGuide}.pdf docs/PDF/${userGuide}.pd
done

echo "$(date +'%d %B %Y - %k:%M'): Building site to ../web/en/"
mkdocs build -v --site-dir ../web/en/

if [ -f /tmp/Doc-buildlog.txt ]; then
   echo "$(date +'%d %B %Y - %k:%M'): ${ENVIRONMENT}: Copying log file"
   cp /tmp/Doc-buildlog.txt ../web/en/
fi
