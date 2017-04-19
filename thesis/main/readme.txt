# Comments for aaltothesis package version 2.2
# 2015-04-24 Luis Costa

** Changes from previous package

- aaltothesis.cls has been fixed so that the default font is now 
  Latin Modern. There were serious issues in conjunction with MiKTeX 
  that now have been fixed.

# 2015-04-10 Luis Costa

** Changes from previous package

- aaltothesis.cls (version 2.1) has been modified so that now on the 
  cover page the title comes first followed by the author's name.

# 2015-01-16 Luis Costa and Perttu Puska

**Changes from previous package (version 2.0)**

- The \code of masters thesis major is no longer required. Doesn't 
  affect bachelors degree.

**Changes from previous package (version 1.7)**

- All definitions and specifications in class file aaltothesis.cls

- Support for Swedish added. The package now supports English, Finnish
  and Swedish. All language specific code is now in one place in the 
  class file.

- utf8 is now the default encoding for the input.  Also supported are 
  latin1 (iso-latin 1) and ansinew.


**Package contents**

aaltothesis.cls (class definitions)
opinnaytepohja.tex (thesis template in Finnish)
thesistemplate.tex (thesis template in English (a lot of it))
kuva1.eps  
kuva2.eps  
kuva1.pdf
kuva2.pdf
readme.txt (this file)


**Using this package**

1. Download the aaltologo-package from Aalto-Latex wiki pages

https://wiki.aalto.fi/download/attachments/49383512/aaltologo.zip

and unzip it to your working directory.

2. unzip (or download all components listed above) the
aaltothesis package

3. Edit file opinnaytepohja.tex or thesistemplate.tex (see remarks below)

4. Compile the file

# pdflatex opinnaytepohja.tex
(first run)
# pdflatex opinnaytepohja.tex
(second and final run)

*Remarks*

All changes are made to the file opinnaytepohja.tex or thesistemplate.tex.
There is no need to edit the file aaltothesis.cls. 

1. The default language in opinnaytepohja.tex is Finnish (and in 
   thesistemplate.tex it is English).

 To change this in opinnaytepohja.tex, uncomment 
 %\documentclass[english,12pt]{article}
 and comment out
 \documentclass[finnish,12pt]{article}

2. The default output format is now pdf.

To change this comment out
 \usepackage[pdftex]{graphicx}
and uncomment 
 %\usepackage[dvips]{graphicx}
 
3. Choose the kind of thesis you will be creating.

To change this, choose the correct degree by
commenting and uncommenting 

 %\univdegree{BSc}
 \univdegree{MSc}
 %\univdegree{Lic} 

# End  




