%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% LaTeX document class 'aaltothesis', for use with LaTeX2e.
%% This is a style for typesetting theses to be submitted for
%% examination to Aalto University School of Electrical Engineering,
%% which may be extended for use in other Aalto schools as well.
%%
%% Version 2.1: The positions of the author and title have been interchanged;
%% now the title is followed by the author.
%% Version 2.0 onwards supports Swedish as well, in addition to the earlier
%% Finnish and English.
%%
%% COPYRIGHT 2015, by Luis R.J. Costa, luis.costa@aalto.fi
%% Swedish translations (2014) by Elisabeth Nyberg, elisabeth.nyberg@aalto.fi
%% and Henrik Wallén, henrik.wallen@aalto.fi
%%
%% Copying of part or all of any file in the aaltothesis package is
%% allowed under the following conditions only:
%% (1) You may freely distribute unchanged copies of the files. Please
%%     include the documentation (opinnaytetexpohja.tex) when you do
%%     so.
%% (2) You may modify a renamed copy of any file, but only for personal
%%     use or use within an organization.
%% (3) You may copy fragments from the files, for personal use or for
%%     use in a macro package for distribution, as long as credit is
%%     given where credit is due.
%%
%% You are NOT ALLOWED to take money for the distribution or use of
%% these files or modified versions or fragments thereof, except for a
%% nominal charge for copying etc.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%
%% Adding a new language:
%% 1. Add the language option using \DeclareOption as done a few lines below.
%%    It's assumed your language is supported by the babel package.
%% 2. Add your language to the options passed to babel
%% 3. Make a corresponding short-hand macro \IfYourlang (under "Some shorthand")
%% 4. Add the translations to the macros \setthesismainlangnames and
%%    \setabstractlangnames.
%% 5. Make the corresponding additions to the macros \L@ng and \settocabslang.
%% 6. Make your language option available in the abstractpage environment.
%%
%%
\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{aaltothesis}[2015/09/24 Aalto Univ. ELEC thesis class v2.2]%
\RequirePackage{ifthen}%
%
\newcommand*{\MainLang}{}%
\DeclareOption{english}{\AtEndOfClass{\main@language{english}}%
  \renewcommand*{\MainLang}{english}}%
\DeclareOption{finnish}{\AtEndOfClass{\main@language{finnish}}%
  \renewcommand*{\MainLang}{finnish}}%
\DeclareOption{swedish}{\AtEndOfClass{\main@language{swedish}}%
  \renewcommand*{\MainLang}{swedish}}%
%
\newboolean{CHEM}%
\newboolean{BIZ}%
\newboolean{ELEC}%
\newboolean{ENG}%
\newboolean{SCI}%
\newboolean{ARTS}%
\DeclareOption{chem}{\setboolean{CHEM}{true}\setboolean{BIZ}{false}%
  \setboolean{ELEC}{false}\setboolean{ENG}{false}%
  \setboolean{SCI}{false}\setboolean{ARTS}{false}%
}%
\DeclareOption{econ}{\setboolean{CHEM}{false}\setboolean{BIZ}{true}%
  \setboolean{ELEC}{false}\setboolean{ENG}{false}%
  \setboolean{SCI}{false}\setboolean{ARTS}{false}%
}%
\DeclareOption{elec}{\setboolean{CHEM}{false}\setboolean{BIZ}{false}%
  \setboolean{ELEC}{true}\setboolean{ENG}{false}%
  \setboolean{SCI}{false}\setboolean{ARTS}{false}%
}%
\DeclareOption{eng}{\setboolean{CHEM}{false}\setboolean{BIZ}{false}%
  \setboolean{ELEC}{false}\setboolean{ENG}{true}%
  \setboolean{SCI}{false}\setboolean{ARTS}{false}%
}%
\DeclareOption{sci}{\setboolean{CHEM}{false}\setboolean{BIZ}{false}%
  \setboolean{ELEC}{false}\setboolean{ENG}{false}%
  \setboolean{SCI}{true}\setboolean{ARTS}{false}%
}%
\DeclareOption{arts}{\setboolean{CHEM}{false}\setboolean{BIZ}{false}%
  \setboolean{ELEC}{false}\setboolean{ENG}{false}%
  \setboolean{SCI}{false}\setboolean{ARTS}{true}%
}%
%% Font encoding support for iso-latin-1, utf-8 and ansinew (MiKTeX):
%% LC 26.9.2013
\DeclareOption{latin1}{\PassOptionsToPackage{latin1}{inputenc}}%
\DeclareOption{utf8}{\PassOptionsToPackage{utf8}{inputenc}}%
\DeclareOption{ansinew}{\PassOptionsToPackage{ansinew}{inputenc}}%
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%
\ExecuteOptions{english,utf8}% Default package options
\ProcessOptions\relax%
%
\LoadClass{article}%
%
\RequirePackage[swedish,finnish,english]{babel}%
\RequirePackage[T1]{fontenc}%
\RequirePackage{inputenc}% For scands in both Finnish and English input docs
\RequirePackage{lmodern}%
%  \RequirePackage{cmlgc} % For mac users(?), uncomment this line
\RequirePackage[kerning,spacing,babel]{microtype}%
%
\RequirePackage{calc}%
\RequirePackage{color}%
\RequirePackage{chngcntr}% Allows conter dependencies to be changed for appendix
%
%% Set up the logo
%% Note that BIZ and ARTS still (2012-08-17) 
%% use old logos as the aaltologo-package
%% is not up-to-date. Hence there are calls to ECON and TAIK pic routines. 
\ifthenelse{\boolean{CHEM}}{%
  \RequirePackage[CHEM,Uncoated]{aaltologo}%
}{%
\ifthenelse{\boolean{BIZ}}{%
  \RequirePackage[ECON,Uncoated]{aaltologo}%
}{%
\ifthenelse{\boolean{ELEC}}{%
  \RequirePackage[ELEC,Uncoated]{aaltologo}%
}{%
\ifthenelse{\boolean{ENG}}{%
  \RequirePackage[ENG,Uncoated]{aaltologo}%
}{%
\ifthenelse{\boolean{SCI}}{%
  \RequirePackage[SCI,Uncoated]{aaltologo}%
}{%
\ifthenelse{\boolean{ARTS}}{% 
  \RequirePackage[TAIK,Uncoated]{aaltologo}%
}{%
\RequirePackage[Uncoated]{aaltologo}%
}}}}}}%
%
%%%%%%% Set up the page layout %%%%%%%
%% First the horizontal dimensions %%
\setlength{\hoffset}{-1in}
\setlength{\oddsidemargin}{35mm}
\setlength{\evensidemargin}{25mm}
\setlength{\textwidth}{15cm}
%% Then the vertical dimensions
\setlength{\voffset}{-1in}
\setlength{\headsep}{7mm}
\setlength{\headheight}{1em}
\setlength{\topmargin}{25mm-\headheight-\headsep}
\setlength{\textheight}{23cm}
%
%%%%%%% Float control %%%%%%%
\renewcommand{\floatpagefraction}{0.1}%
\renewcommand{\textfraction}{0.1}%
\renewcommand{\topfraction}{0.9}%
\renewcommand{\bottomfraction}{0.9}%
%
%%%%%% Now come all the macros used along with all the required counter, etc.
%
\newcommand*{\AbstractLang}{\MainLang}%
%
%%%%%%% Some shorthand %%%%%%%
\newcommand*{\IfEng}[3]{\ifthenelse{\equal{#1}{english}}{#2}{#3}}%
\newcommand*{\IfFin}[3]{\ifthenelse{\equal{#1}{finnish}}{#2}{#3}}%
\newcommand*{\IfSwe}[3]{\ifthenelse{\equal{#1}{swedish}}{#2}{#3}}%
%
%%%%%%% Storage of number of pages and number of abstracts %%%%%%%
\newcounter{NMainPages}%
\newcounter{NInitPages}%
\newcommand*{\storeinipagenumber}{%
\immediate\write\@auxout{\string\setcounter{NInitPages}{\arabic{page}-1}}%
}%
\AtEndDocument{%
\immediate\write\@auxout{\string\setcounter{NMainPages}{\thepage}}%
}%
%
%%%%%%% Default fonts: Latin Modern (LC 24.9.2015)
% This is required to overwite any fonts set elsewhere. The package 
% aaltologo.sty sets \rmdefault to newcent, \ttdefault to txtt.
\renewcommand{\rmdefault}{lmr}%
\renewcommand{\ttdefault}{lmtt}%
\renewcommand{\sfdefault}{lmss}%
%
%%%%%%
%%%%%% Language-specific definitions
%%%%%% First create the necessary variables.
%%%%%%
\newcommand*{\univ@rsity}{}%
\newcommand*{\sch@@l}{}%
\newcommand*{\thesissupervisorname}{}%
\newcommand*{\thesissuperadvisorname}{}%
\newcommand*{\thesisadvisorname}{}%
\newcommand*{\thesisadvisorsname}{}%
\newcommand{\covertext}{}%
\newcommand*{\authorname}{}%
\newcommand*{\thesisname}{}%
\newcommand*{\keywordsname}{}%
\newcommand*{\datename}{}%
\newcommand*{\langname}{}%
\newcommand*{\nofpgsname}{}%
\newcommand*{\supervisorname}{}%
\newcommand*{\advisorname}{}%
\newcommand*{\degprogramname}{}%
\newcommand*{\professorshipname}{}%
\newcommand*{\codename}{}%
%%
\newcommand*{\absheadname}{}%
\newcommand*{\tocabslang}{}%
%
%%%%%% Set up those values that can be set up automatically: university,
% school name, logo, etc.
%% Some can also be explicitly set by the user via macros like \university
%% and \school defined below after the language-specific stuff.
%%
\newcommand{\setthesismainlangnames}{%
 \IfEng{\MainLang}{%
   %% Cover page stuff in English
   \renewcommand*{\thesissupervisorname}{Thesis supervisor}%
   \renewcommand*{\thesissuperadvisorname}{Thesis supervisor and advisor}%
   \renewcommand*{\thesisadvisorname}{Thesis advisor}%
   \renewcommand*{\thesisadvisorsname}{Thesis advisors}%
   \renewcommand{\covertext}{%
     \ifthenelse{\boolean{BSc}}{Bachelor's thesis}{}%
     \ifthenelse{\boolean{MSc}}%
                {Thesis submitted for examination for the degree of %
                  Master of Science in Technology.}{}%
     \ifthenelse{\boolean{Lic}}%
                {Thesis submitted for examination for the degree of %
                 Licentiate of Science in Technology.}{}%
   }%
   \renewcommand*{\abstractname}{Abstract}%
 }{}% end if English
 \IfFin{\MainLang}{%
   %% Cover page stuff in Finnish
   \renewcommand*{\thesissupervisorname}{%
     \ifthenelse{\boolean{BSc}}{Vastuuopettaja}{Ty\"on valvoja}%
   }%
   \renewcommand*{\thesissuperadvisorname}{%
     \ifthenelse{\boolean{BSc}}%
                {Vastuuopettaja ja ohjaaja}{Ty\"on valvoja ja ohjaaja}%
   }%
   \renewcommand*{\thesisadvisorname}{Ty\"on ohjaaja}%
   \renewcommand*{\thesisadvisorsname}{Ty\"on ohjaajat}%
   \renewcommand{\covertext}{%
     \ifthenelse{\boolean{BSc}}{Kandidaatinty\"o}{}%
     \ifthenelse{\boolean{MSc}}%
       {Diplomity\"o, joka on j\"atetty opinn\"aytteen\"a tarkastettavaksi %
        diplomi-insin\"o\"orin tutkintoa varten Espoossa \D@te{}.}{}%
     \ifthenelse{\boolean{Lic}}%
       {Lisensiaatintutkimus, joka on j\"atetty opinn\"aytteen\"a tarkastettavaksi %
        tekniikan lisensiaatin tutkintoa varten Espoossa \D@te{}.}{}%
   }%
   \renewcommand*{\abstractname}{Tiivistelm\"a}%
   \renewcommand{\contentsname}{Sis\"allysluettelo}%
 }{}% end if Finnish
 \IfSwe{\MainLang}{%
   %% Cover page stuff in Swedish
   \renewcommand*{\thesissupervisorname}{%
     \ifthenelse{\boolean{BSc}}{Ansvarsl\"arare}{\"Overvakare}%
   }%
   \renewcommand*{\thesissuperadvisorname}{%
     \ifthenelse{\boolean{BSc}}%
       {Ansvarsl\"arare och handledare}{Arbetets \"overvakare och handledare}%
   }%
   \renewcommand*{\thesisadvisorname}{Handledare}%
   \renewcommand*{\thesisadvisorsname}{Handledare}%
   \renewcommand{\covertext}{%
     \ifthenelse{\boolean{BSc}}{Kandidatexamen}{}%
     \ifthenelse{\boolean{MSc}}%
       {Diplomarbete, som inl\"amnats f\"or granskning som l\"ardomsprov
        f\"or avl\"aggande av diplomingenj\"orsexamen i Esbo den \D@te{}.}{}%
     \ifthenelse{\boolean{Lic}}%
       {Licentiatavhandling, som inl\"amnats f\"or granskning som l\"ardomsprov
        f\"or avl\"aggande av licentiatexamen i Esbo den \D@te{}.}{}%
   }%
   \renewcommand*{\abstractname}{Sammandrag}%
   \renewcommand{\contentsname}{Inneh\aa llsf\"orteckning}%
 }{}% end if Swedish
}%
%
\newcommand*{\setabstractlangnames}{%
% Define the the headers, the names of fields in the language of the abstract,
% and set up some lengths used in the abstract.
 \IfEng{\AbstractLang}{%
   %% School is common to cover page and abstract (English)
   \ifthenelse{\boolean{ARTS}}{%
     \renewcommand*{\sch@@l}{School of Arts, Design and Architecture}%
   }{}%
   \ifthenelse{\boolean{BIZ}}{%
     \renewcommand*{\sch@@l}{School of Business}%
   }{}%
   \ifthenelse{\boolean{CHEM}}{%
     \renewcommand*{\sch@@l}{School of Chemical Technology}%
   }{}%
   \ifthenelse{\boolean{ELEC}}{%
     \renewcommand*{\sch@@l}{School of Electrical Engineering}%
   }{}%
   \ifthenelse{\boolean{ENG}}{%
     \renewcommand*{\sch@@l}{School of Engineering}%
   }{}%
   \ifthenelse{\boolean{SCI}}{%
     \renewcommand*{\sch@@l}{School of Science}%
   }{}%
   %% Abstract header and field names in English
   \renewcommand*{\univ@rsity}{aalto university}%
   \renewcommand*{\authorname}{Author}%
   \renewcommand*{\thesisname}{Title}%
   \renewcommand*{\keywordsname}{Keywords}%
   \renewcommand*{\datename}{Date}%
   \renewcommand*{\langname}{Language}%
   \renewcommand*{\nofpgsname}{Number of pages}%
   \renewcommand*{\supervisorname}{%
     \ifthenelse{\value{advisors}=0}{Supervisor and advisor}{Supervisor}%
   }%
   \renewcommand*{\advisorname}{%
     \ifthenelse{\value{advisors}=0}{}{%
       \ifthenelse{\value{advisors}=1}{Advisor}{%
         \ifthenelse{\value{advisors}>1}{Advisors}{%
     }}}%%%
   }%
   \renewcommand*{\degprogramname}{Degree programme}%
   \renewcommand*{\professorshipname}{Professorship}%
   \renewcommand*{\codename}{Code}%
   %
   \ifthenelse{\boolean{BSc}}{%
     \renewcommand*{\absheadname}{abstract of the bachelor's thesis}%
     \settowidth{\absheadlen}{BACHELOR'S THESIS}%
   }{}%
   \ifthenelse{\boolean{MSc}}{%
     \renewcommand*{\absheadname}{abstract of the master's thesis}%
     \settowidth{\absheadlen}{MASTER'S THESIS}%
   }{}%
   \ifthenelse{\boolean{Lic}}{%
     \renewcommand*{\absheadname}{abstract of the licentiate's thesis}%
     \settowidth{\absheadlen}{LICENTIATE'S THESIS}%
   }{}%
 }{}% end if English
 \IfFin{\AbstractLang}{%
   %% School is common to cover page and abstract (Finnish)
   \ifthenelse{\boolean{ARTS}}{%
     \renewcommand*{\sch@@l}{Taiteiden ja suunnittelun korkeakoulu}%
   }{}%
   \ifthenelse{\boolean{BIZ}}{%
     \renewcommand*{\sch@@l}{Kauppakorkeakoulu}%
   }{}%
   \ifthenelse{\boolean{CHEM}}{%
     \renewcommand*{\sch@@l}{Kemian tekniikan korkeakoulu}%
   }{}%
   \ifthenelse{\boolean{ELEC}}{%
     \renewcommand*{\sch@@l}{S\"ahk\"otekniikan korkeakoulu}%
   }{}%
   \ifthenelse{\boolean{ENG}}{%
     \renewcommand*{\sch@@l}{Insin\"o\"oritieteiden korkeakoulu}%
   }{}%
   \ifthenelse{\boolean{SCI}}{%
     \renewcommand*{\sch@@l}{Perustieteiden korkeakoulu}%
   }{}%
   %% Abstract header and field names in Finnish
   \renewcommand*{\univ@rsity}{aalto-yliopisto}%
   \renewcommand*{\authorname}{Tekij\"a}%
   \renewcommand*{\thesisname}{Ty\"on nimi}%
   \renewcommand*{\keywordsname}{Avainsanat}%
   \renewcommand*{\datename}{P\"aiv\"am\"a\"ar\"a}%
   \renewcommand*{\langname}{Kieli}%
   \renewcommand*{\nofpgsname}{Sivum\"a\"ar\"a}%
   \renewcommand*{\supervisorname}{%
     \ifthenelse{\value{advisors}=0}{%
       \ifthenelse{\boolean{BSc}}%
                  {Vastuuopettaja ja ohjaaja}{Ty\"on valvoja ja ohjaaja}%
     }{%
       \ifthenelse{\boolean{BSc}}{Vastuuopettaja}{Ty\"on valvoja}%
     }%
   }%
   \renewcommand*{\advisorname}{%
     \ifthenelse{\value{advisors}=0}{}{%
       \ifthenelse{\value{advisors}=1}{Ty\"on ohjaaja}{%
         \ifthenelse{\value{advisors}>1}{Ty\"on ohjaajat}{%
     }}}%%%
   }%
   \renewcommand*{\degprogramname}{Koulutusohjelma}%
   \renewcommand*{\professorshipname}{Professuuri}%
   \renewcommand*{\codename}{Koodi}%
   \ifthenelse{\boolean{BSc}}{%
     \renewcommand*{\absheadname}{kandidaatinty\"on tiivistelm\"a}%
     \settowidth{\absheadlen}{KANDIDAATINTYON}%
   }{}%
   \ifthenelse{\boolean{MSc}}{%
     \renewcommand*{\absheadname}{diplomity\"on tiivistelm\"a}{}%
     \settowidth{\absheadlen}{DIPLOMITYON}%
   }{}%
   \ifthenelse{\boolean{Lic}}{%
     \renewcommand*{\absheadname}{lisensiaatintutkimuksen tiivistelm\"a}{}%
     \settowidth{\absheadlen}{LISENSIAATINTUTKIMUKSEN}%
   }{}%
 }{}% end if Finnish
 \IfSwe{\AbstractLang}{%
   %% School is common to cover page and abstract (Swedish)
   \ifthenelse{\boolean{ARTS}}{%
     \renewcommand*{\sch@@l}{H\"ogskolan f\"or konst, design och arkitektur}%
   }{}%
   \ifthenelse{\boolean{BIZ}}{%
     \renewcommand*{\sch@@l}{Handelsh\"ogskolan}%
   }{}%
   \ifthenelse{\boolean{CHEM}}{%
     \renewcommand*{\sch@@l}{H\"ogskolan f\"or kemiteknik}%
   }{}%
   \ifthenelse{\boolean{ELEC}}{%
     \renewcommand*{\sch@@l}{H\"ogskolan f\"or elektroteknik}%
   }{}%
   \ifthenelse{\boolean{ENG}}{%
     \renewcommand*{\sch@@l}{H\"ogskolan f\"or ingenj\"orsvetenskaper}%
   }{}%
   \ifthenelse{\boolean{SCI}}{%
     \renewcommand*{\sch@@l}{H\"ogskolan f\"or teknikvetenskaper}%
   }{}%
   %% Abstract header and field names in Swedish
   \renewcommand*{\univ@rsity}{aalto-universitetet}%
   \renewcommand*{\authorname}{F\"orfattare}%
   \renewcommand*{\thesisname}{Titel}%
   \renewcommand*{\keywordsname}{Nyckelord}%
   \renewcommand*{\datename}{Datum}%
   \renewcommand*{\langname}{Spr\aa k}%
   \renewcommand*{\nofpgsname}{Sidantal}%
   \renewcommand*{\supervisorname}{%
     \ifthenelse{\value{advisors}=0}{%
       \ifthenelse{\boolean{BSc}}%
                  {Ansvarsl\"arare}{\"Overvakare och handledare}%
     }{%
       \ifthenelse{\boolean{BSc}}{Ansvarsl\"arare}{\"Overvakare}%
     }%
   }%
   \renewcommand*{\advisorname}{%
     \ifthenelse{\value{advisors}=0}{}{%
       \ifthenelse{\value{advisors}=1}{Handledare}{%
         \ifthenelse{\value{advisors}>1}{Handledare}{%
     }}}%%%
   }%
   \renewcommand*{\degprogramname}{Utbildningsprogram}%
   \renewcommand*{\professorshipname}{Professur}%
   \renewcommand*{\codename}{Kod}%
   \ifthenelse{\boolean{BSc}}{%
     \renewcommand*{\absheadname}{sammandrag av kandidatarbetet}%
     \settowidth{\absheadlen}{KANDIDATARBETET}%
   }{}%
   \ifthenelse{\boolean{MSc}}{%
     \renewcommand*{\absheadname}{sammandrag av diplomarbetet}%
     \settowidth{\absheadlen}{DIPLOMARBETET}%
   }{}%
   \ifthenelse{\boolean{Lic}}{%
     \renewcommand*{\absheadname}{sammandrag av licentiatavhandlingen}{}%
     \settowidth{\absheadlen}{LICENTIATAVHANDLINGEN}%
   }{}%
 }{}% end if Swedish
}%
%
\newcommand*{\L@ng}[1]{% internal macro:
% Determine the language of the thesis and write it into the abstract in the.
% appropriate field. The supplied (language) parameter is supplied from the
% abstract environment, which is specified by the user to the abstract
% environment.
 \IfEng{#1}{%
   \ifthenelse{\equal{\MainLang}{english}}{English}{}
   \ifthenelse{\equal{\MainLang}{finnish}}{Finnish}{}
   \ifthenelse{\equal{\MainLang}{swedish}}{Swedish}{}
 }{}%
 \IfFin{#1}{%
   \ifthenelse{\equal{\MainLang}{english}}{Englanti}{}
   \ifthenelse{\equal{\MainLang}{finnish}}{Suomi}{}
   \ifthenelse{\equal{\MainLang}{swedish}}{Ruotsi}{}
 }{}%
 \IfSwe{#1}{%
   \ifthenelse{\equal{\MainLang}{english}}{Engelska}{}
   \ifthenelse{\equal{\MainLang}{finnish}}{Finska}{}
   \ifthenelse{\equal{\MainLang}{swedish}}{Svenska}{}
 }{}%
}%
%
\newcommand{\settocabslang}{% internal macro:
% Sets value of \tocabslang, the extra text that goes into the toc when
% there are more abstracts than one. The value of \tocabslang has to be set
% explicitly prior to use, since it is used in \addcontentsline in the
% abstractpage environment, and so it may not contain any \ifthenelse commands.
% Thus making \tocabslang decide with an \ifthenelse results in an error since
% it is part of the argument of \addcontentsline
 \ifthenelse{\equal{\MainLang}{\AbstractLang}}{%
   \renewcommand*{\tocabslang}{}%
 }{%
 \IfEng{\MainLang}{%
    \IfFin{\AbstractLang}{\renewcommand*{\tocabslang}{(in Finnish)}}{%
      \IfSwe{\AbstractLang}{\renewcommand*{\tocabslang}{(in Swedish)}}{}}%
  }{}%
  \IfFin{\MainLang}{%
    \IfEng{\AbstractLang}{\renewcommand*{\tocabslang}{(englanniksi)}}{%
      \IfSwe{\AbstractLang}{\renewcommand*{\tocabslang}{(ruotsiksi)}}{}}%
  }{}%
  \IfSwe{\MainLang}{%
    \IfEng{\AbstractLang}{\renewcommand*{\tocabslang}{(p\aa{} engelska)}}{%
      \IfFin{\AbstractLang}{\renewcommand*{\tocabslang}{(p\aa{} finska)}}{}}%
   }{}%
 }{}%
}%
%
%% This ends the definitions of language-specific variables
%
\AtBeginDocument{\setthesismainlangnames\setabstractlangnames}%
%
%%%%%% Interface commands: parameters specified by user (+ necessary variables).
%% Some have been automatically set up in the language-specific part but can
%% be overrun by the user via these macros.
%% First the straightforward ones:
%
\newcommand*{\@uth@r}{}% variable
\renewcommand*{\author}[1]{\renewcommand*{\@uth@r}{#1}}% User command
%
\newcommand{\th@sistitl@}{}% variable
\newcommand{\thesistitle}[1]{ \renewcommand{\th@sistitl@}{#1}}% User command
%
\newcommand*{\D@te}{}% variable
\renewcommand*{\date}[1]{\renewcommand*{\D@te}{#1}}% User command
%
\newcommand*{\pl@ce}{}% variable
\newcommand*{\place}[1]{\renewcommand{\pl@ce}{#1}}% User command
%
\newcommand*{\dateandplace}{\pl@ce{} \D@te{}}% Internal macro
%
\newcommand*{\university}[1]{\renewcommand*{\univ@rsity}{#1}}% User command
%
\newcommand*{\school}[1]{\renewcommand*{\sch@@l}{#1}}% User command
%
\newcommand*{\d@gpr@g}{}% variable
\newcommand*{\degreeprogram}[1]{\renewcommand*{\d@gpr@g}{#1}}% User command
%
\newcommand*{\sup@rvis@r}{}% variable
\newcommand*{\supervisor}[1]{\renewcommand*{\sup@rvis@r}{#1}}% User command
%
% user interface for logo used on the cover page
\newcommand*{\@@ltologo}{}% variable
\newcommand{\uselogo}[2]{%
  \renewcommand*{\@@ltologo}{\AaltoLogoSmall{1}{#2}{#1}}%
}%
%
% User commands for M.Sc. and Lic. only
\newcommand*{\pr@fshp}{}% variable
\newcommand*{\professorship}[1]{\renewcommand*{\pr@fshp}{#1}}%
%
\newcommand*{\Cod@}{}% variable
\newcommand*{\code}[1]{\renewcommand{\Cod@}{#1}}% User command
%
\newcommand*{\dep@rtment}{}% variable
\newcommand*{\department}[1]{\renewcommand*{\dep@rtment}{#1}}% User command
%
% Then come the more complex macros:
% First some boolean flags
\newboolean{BSc}%
\setboolean{BSc}{false}%
\newboolean{MSc}%
\setboolean{MSc}{false}%
\newboolean{Lic}%
\setboolean{Lic}{false}%
\newcommand*{\univdegree}[1]{% User command
 \ifthenelse{\equal{#1}{BSc}}{%
  \setboolean{BSc}{true}\setboolean{MSc}{false}\setboolean{Lic}{false}%
 }{%
 \ifthenelse{\equal{#1}{MSc}}{%
  \setboolean{BSc}{false}\setboolean{MSc}{true}\setboolean{Lic}{false}%
 }{%
 \ifthenelse{\equal{#1}{Lic}}{%
  \setboolean{BSc}{false}\setboolean{MSc}{false}\setboolean{Lic}{true}%
}{%
  \PackageError{aaltothesis}%
	       {Only BSc, MSc or Lic is allowed as parameter for degree.}%
	       {Use BSc, MSc or Lic.}%
 }}}%
}%
%
\newcounter{advisors}%
\newcommand*{\advis@rA}{}%
\newcommand*{\advis@rB}{}%
\newcommand*{\advisor}[1]{% User command
 \stepcounter{advisors}%
 \ifthenelse{\value{advisors}=1}{%
   \renewcommand*{\advis@rA}{#1}%
 }{%
 \ifthenelse{\value{advisors}=2}{%
   \renewcommand*{\advis@rB}{#1}%
 }{\PackageError{aaltothesis}{Only 2 advisors are allowed.}%
   {Give at most 2 advisors or hack the code.}}%
 }%
}%
\newcommand*{\Advis@r}[1]{% internal macro
 \ifthenelse{\equal{#1}{1}}{% One advisor
   \advis@rA{}%
 }{%
 \ifthenelse{\equal{#1}{2}}{% Two advisors
   \advis@rB{}%
 }{%
   \PackageError{aaltothesis}{Only 2 advisors are allowed.}%
                {Give at most 2 advisors or hack the code.}}%
 }%
}%
%
%%
%% Two cover-related internal macros
%%
\newcommand*{\cov@rsup@rvisor}{%
 \ifthenelse{\equal{\sup@rvis@r}{\advis@rA}}% same supervisor & instructor
   {\setcounter{advisors}{0}%
    \thesissuperadvisorname:%
   }{%
     \thesissupervisorname:%
   }%
}%
%
\newcommand*{\cov@radvisor}{%
 \ifthenelse{\value{advisors}=0}{}{%
 \ifthenelse{\value{advisors}=1}{\thesisadvisorname:}{%
 \ifthenelse{\value{advisors}>1}{\thesisadvisorsname:}%
 }}%
}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Do the cover page layout %%%%%%%%%%%%%%%%
\pagenumbering{roman}%
\newlength{\coverpageindent}%
\setlength{\coverpageindent}{10mm}%
\newlength{\coverindent}%
\setlength{\coverindent}{5cm}%
\newcommand{\makecoverpage}{%
 \pagestyle{empty}%
 \noindent% Position the title and author
 % The title and author, each in their own box, are place in an enclosing
 % box with its height limited so as to 
 % 1. fix the position of the text that follows on the page and
 % 2. to prevent unnecessarily long titles.
 % The vertical space for the title is 120pt, followed by a 6-mm blank
 % space, and the author's name is typeset in a 12-pt high font.
 \hspace*{\coverpageindent}%
 \parbox[t][132pt+6mm]{0.75\textwidth-\coverpageindent}{%
   \noindent% First position the title
   \parbox[t]{0.75\textwidth-\coverpageindent}{\raggedright%
     \usefont{T1}{phv}{b}{n}\fontsize{15}{15}\selectfont{\th@sistitl@}}\par%
   \vspace{6mm}%
   \noindent% followed by the author
   \parbox{0.75\textwidth-\coverpageindent}{\textbf{\@uth@r}}\par%
 }\par
 \vspace{20mm}%
 \noindent%
 \hspace*{\coverpageindent}%
 \parbox{0.75\textwidth-\coverpageindent}{\raggedright\small%
  {\usefont{T1}{phv}{b}{n}\fontsize{9}{11.1}%
   \selectfont{\textcolor{black}{\sch@@l}}}\\[1em]% Position the school
  \covertext% Position the degree-work text
 }\par%
 \vspace{1ex}%
 \noindent%
 \hspace*{\coverpageindent}%
 \parbox{0.75\textwidth-\coverpageindent}{%
  \raggedright%
  \small%
 % Place the date and place; only for the BSc text and text in English
  \ifthenelse{\boolean{BSc}\or\equal{\MainLang}{english}}{\dateandplace\par}{}%
  \vspace{23mm}%
  \noindent%
  \textbf{\cov@rsup@rvisor}\par%
  \vspace{1em}%
  \hspace{\coverindent}\sup@rvis@r\par%
  \ifthenelse{\value{advisors}>0}{%
   \vspace{2em}%
   \noindent%
   \textbf{\cov@radvisor}\par%
   \vspace{1em}%
   \hspace{\coverindent}\Advis@r{1}%
  }{}%
  \ifthenelse{\value{advisors}>1}{%
   \par%
   \vspace{4em}%
   \hspace{\coverindent}\Advis@r{2}%
  }{}%
 }%
 \vfill%
 \noindent%
 \hspace{\coverpageindent}%
 \@@ltologo%
 \cleardoublepage%
 \pagestyle{myheadings}%
}%
%%%%%%%%%%%%%% End of the cover page layout %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Abstract stuff begins here %%%%%%%%%%%%%%%
%% First some lengths and internal macros
\newlength{\absheadlen}% Sets width of 2nd column of the abstract header
\newlength{\abstractwidth}%
\AtBeginDocument{\setlength{\abstractwidth}{\textwidth-\columnsep}}%
\newlength{\rowsep}%
\setlength{\rowsep}{-\columnsep}%
\newlength{\keywdparheight}%
\setlength{\keywdparheight}{3\baselineskip}%
\newlength{\auxwidth}%
%
\newcommand*{\@bsbre@k}{\\\\[\rowsep]\hline\\[\rowsep]}%
\newcommand{\@bsbox}[2]{\parbox[t][#1]{\abstractwidth}{#2}\@bsbre@k}%
%
\newcommand{\@bsfield}[3][]{%
 \settowidth{\auxwidth}{#2: }%
 \parbox[t][#1]{\auxwidth}{#2: }%
 \parbox[t][#1]{\abstractwidth-\auxwidth-\columnsep}{#3}%
}%
%
\newcommand{\@bs@uthor}[1]{\@bsfield{\authorname}{#1}\vfill}%
\newcommand{\@bstitlen@me}[1]{\@bsfield{\thesisname}{\raggedright#1}\vfill}%
\newcommand*{\k@yw@rds}{}%
\newcommand{\keywords}[1]{\renewcommand*{\k@yw@rds}{#1}}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% The abstract page layout %%%%%%%%%%%%%%%%
\newenvironment{abstractpage}[1][\MainLang]{%
 \IfEng{#1}{\renewcommand*{\AbstractLang}{english}%
 }{%
 \IfFin{#1}{\renewcommand*{\AbstractLang}{finnish}%
 }{%
 \IfSwe{#1}{\renewcommand*{\AbstractLang}{swedish}%
 }{%
   \PackageError{aaltothesis}%
     {Only english, finnish or swedish is allowed as optional parameter.}%
     {Use english, finnish or swedish.}%
 }}}%
 \setabstractlangnames%
 \phantomsection%
 \settocabslang%
 \addcontentsline{toc}{section}{\abstractname{} \tocabslang}%
 \thispagestyle{empty}%
 \enlargethispage{5mm}%
 \noindent%
 \begin{tabular}{@{}p{\abstractwidth-\absheadlen}p{\absheadlen}@{}}%
  \parbox[t]{\abstractwidth-\absheadlen}{%
    \textsc{\MakeLowercase{\univ@rsity}\\\MakeLowercase{\sch@@l}}}%
  & \parbox[t]{\absheadlen}{\raggedleft\textsc{\absheadname}}\\%
  &\\[-2mm]%
 \end{tabular}%
 \par%
 \noindent%
 \begin{tabular}{|l|}%
   \hline\\[\rowsep]%
   \@bsbox{26mm}{\@bs@uthor{\@uth@r}\@bstitlen@me{\th@sistitl@{}}%
     \datename: \D@te{} \hfill \langname: \L@ng{#1} \hfill \nofpgsname: %
     \arabic{NInitPages}+\arabic{NMainPages}}%
   \ifthenelse{\boolean{BSc}}{%
     \@bsbox{5mm}{\degprogramname: \d@gpr@g{}\par\vfill}%
     \ifthenelse{\value{advisors}=0}{%
       \@bsbox{5mm}{\supervisorname: \sup@rvis@r{}%
       }%
     }{%
       \@bsbox{12mm}{\supervisorname: \sup@rvis@r{}\par\vfill%
         \advisorname: \Advis@r{1}%
         \ifthenelse{\value{advisors}>1}{, \Advis@r{2}}{}}%
     }%
   }{%
     \@bsbox{12mm}{%
       \dep@rtment{}\par\vfill%
%       \professorshipname: \pr@fshp{}}\hfill\codename: \Cod@}%
       \professorshipname: \pr@fshp{}}%
     \ifthenelse{\value{advisors}=0}{%
       \@bsbox{5mm}{\supervisorname: \sup@rvis@r{}%
       }%
     }{%
       \@bsbox{12mm}{\supervisorname: \sup@rvis@r{}\par\vfill%
         \advisorname: \Advis@r{1}%
         \ifthenelse{\value{advisors}>1}{, \Advis@r{2}}{}%
       }%
     }%
   }%
   \begin{minipage}[t][133mm]{\abstractwidth}%
   \ifthenelse{\equal{\MainLang}{\AbstractLang}}{}{\begin{otherlanguage*}{#1}}%
}{%
   \ifthenelse{\equal{\MainLang}{\AbstractLang}}{}{\end{otherlanguage*}}%
   \end{minipage}%
   \@bsbre@k\@bsfield[\keywdparheight]{\keywordsname}{\k@yw@rds}\\\hline%
  \end{tabular}%
  \setcounter{advisors}{0}%
  \clearpage%
}%
%%%%%% Abstract stuff ends here %%%%%%
%
%% A few more macros
%%
%% \phantomsection is the command used by hyperref to set a bookmark to 
%% starred sections so that links have the right target, e.g. in a toc.
%% \phantomsection is a dummy command without the hyperref package.
\AtBeginDocument{\providecommand*{\phantomsection}{}}%
%
\newcommand*{\mysection}[1]{%
\newpage%
\section*{#1}%
\addcontentsline{toc}{section}{#1}%
}%
%
\newcommand{\thesistableofcontents}{%
\phantomsection%
\addcontentsline{toc}{section}{\contentsname}%
\tableofcontents%
}%
%
\newcommand{\thesisappendix}{%
\appendix
%\phantomsection
%% Adds the word "Appendices" to the table of contents
%\addcontentsline{toc}{section}{Liiteet}
%\addcontentsline{toc}{section}{Appendices}
\counterwithin{equation}{section}%
\renewcommand{\theequation}{\thesection\arabic{equation}}%
\counterwithin{figure}{section}%
\renewcommand{\thefigure}{\thesection\arabic{figure}}%
\renewcommand{\theHfigure}{\thesection\arabic{figure}}% for hyperref
\counterwithin{table}{section}%
\renewcommand{\thetable}{\thesection\arabic{table}}%
\renewcommand{\theHtable}{\thesection\arabic{table}}% for hyperref
}%
%
\newcommand*{\thesisbibliography}{%
\phantomsection%
\addcontentsline{toc}{section}{\refname}%
}
%
\AtBeginDocument{\pagestyle{myheadings}}%
%
\endinput
