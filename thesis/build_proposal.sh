#!/bin/sh

echo "\n###############################"
echo "####### BUILDING THESIS #######"
echo "###############################\n"


echo "First run! This will get us an important aux fil..."
#skapa auxfil med requests till bibentries
pdflatex thesis > /dev/null 2>&1

echo "Second run! This will yadayada mixmatch and crate a bbl file..."
#plockar requests från bib från ovan och mekmekmek skapar en bblfil
bibtex thesis > /dev/null 2>&1

echo "Third run! Will do stuff to connect the above commands..."
#mixmatchar två ovan commands
pdflatex thesis > /dev/null 2>&1

echo "Fourth run! Last cross referencing and finalizing..."
#Fixar sista cross references och skapar en fin pdf med allt färdigt
pdflatex thesis > /dev/null 2>&1

echo "Removing aux, bbl, blg, out and log files..."
#tar bort alla tramsiga filer skapade av latex som inte behövs om allt går om det ska
rm thesis.aux thesis.bbl thesis.blg thesis.log thesis.out

echo "PDF generated but I have no idea if it was successful. You'll have to check that for yourself you lazy bum!"
