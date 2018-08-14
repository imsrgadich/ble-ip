Plot2LaTeX.m
Saves figure pdf latex file using .svg file format and Inkscape

These folders contains files required for the example:
- Plot2LaTeX.m:			The actual function. Type help Plot2LaTeX for more help and instructions.
- MakeExampleFigure.m: 		Example file, generates a complex figure to show the features of the Plot2LaTeX function.
- IncludeExampleFigure.tex: 	Example LaTeX file, The latex file which imports the saved figure.
- Greeks.m:			Example helper file, used to generate greek symbols as ticks.
- ChangeInterpreter.m:		Example helper file, changes the tex interperter in the figure

------------------------
Installation
1. Include Plot2LaTeX.m to matlab search path.
2. Make sure Inkscape is installed correctly and installation folder is specified correctly in Plot2LaTeX.m
3. Use PDFLaTeX output profile in LaTeX editor

Save figure to latex example:
1. Generate Matlab figure using MakeExampleFigure
2. Save figure in Matlab using Plot2LaTeX( h, 'ExampleFigure' ) 
3. Compile IncludeExampleFigure.tex document.

------------------------
	Version:  1.2
Autor:    J.J. de Jong, K.G.P. Folkersma
Date:     20/04/2016
Contact:  j.j.dejong@utwente.nl

	Known bugs
- Plot2LaTeX does not support text color. Matlab export function to svg is not configured correctly
- Sizes of figures between svg and fig can be different if size is specified in other units than px. This has to do with how Matlab exports the fig to svg.
- Saving after manual rotation of 3d figures does not work. No idea why not. Matlab saves the labels as paths and not as true text to svg.

	Change log
v 1.1 - 02/09/2015 (not released)
- Made compatible for Unix systems
- Added a waitbar
- Corrected the help file

v 1.2 - 20/04/2016
- Fixed file names with spaces in the name. (Not adviced to use in latex though)
- Escape special characters in XML (<,>,',",&) -> (&lt;,&gt;,&apos;,&quot;,&amp;)
