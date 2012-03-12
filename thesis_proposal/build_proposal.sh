#!/bin/sh

#skapa auxfil med requests till bibentries
pdflatex thesis_proposal > /dev/null 2>&1
#plockar requests från bib från ovan och mekmekmek skapar en bblfil
bibtex thesis_proposal > /dev/null 2>&1
#mixmatchar två ovan commands
pdflatex thesis_proposal > /dev/null 2>&1
#Fixar sista cross references och skapar en fin pdf med allt färdigt
pdflatex thesis_proposal > /dev/null 2>&1

#tar bort alla tramsiga filer skapade av latex som inte behövs om allt går om det ska
rm thesis_proposal.aux thesis_proposal.bbl thesis_proposal.blg thesis_proposal.log

echo "PDF generated but I have no idea if it was successful. You'll have to check that for yourself"
