%% Create complex figure to show functionality of Plot2LaTeX
%
% Before you run this file:
%   - Make sure that Inkscape is installed correctly and that the path is
%   corresponding with variable DIR_INKSC in the Plot2LaTeX file.
%   - Make sure that LaTeX is correctly configured. It should use PDFLaTeX

%% Preliminaries
clear; close all
addpath(fileparts(pwd)) % add parent path with Plot2LaTeX.m
greeks = Greeks; % load in all greek symbols. Thanks to: Oleg Komarov
%% Create Figure
h = figure(1);clf; 

subplot(311) % shows it can handle latex formula's and latex scripts
om = logspace(-1,2);
H1 = exp(om.^(1/3).*sin(pi*log(sqrt(om))));
loglog(om,H1);

title('$e^{\sqrt[3]{\omega}sin(\pi log(\sqrt{\omega}))}$');
legend('Inverse Chirp ($\phi_1$)');
xlabel('$\omega {\scriptstyle [rad/s]}$')
ylabel('Amplitude ${\scriptstyle [\mu m]}$')
% ylabel('Amplitude $[\micro\meter]$')% try this if you use package siunits in latex
% annotation('textbox', [0.2,0.7,0.1,0.1], 'String', {'Newlines and texboxes', 'Do not work'} );
% annotation('textarrow',[0.7,0.6],[0.8,0.8],'String',{'And', 'text arrows? '})

% shows Save2Latex can handle plotyy, long legend names and complex tokens
subplot(312) 
hold all; 
x = 0:0.01:20;
y1 = 200*exp(-0.05*x).*sin(x);
y2 = 0.8*exp(-0.5*x).*sin(10*x);
[hAx,hLine1,hLine2] = plotyy(x,y1,x,y2);

title('Double y-axis');
hLeg = legend('$\phi_3$','Far toooo long legend name');
xlabel('Str{\ae}ng{\c e} t{\o}k{\"e}ns')
ylabel(hAx(1),'Slow Decay') % left y-axis (colors do not work)
ylabel(hAx(2),'Fast Decay') % right y-axis (colors do not work)

% shows Save2Latex supports can 3D images, text rotation and transparency.
subplot(313)
[X,Y,Z] = peaks(25);
surf(X,Y,Z);
alpha(0.5);
hcb = colorbar('west');

% add text above and below highest point
[~, idMax] = max(Z(:)); [~, idMin] = min(Z(:)); 
text(X(idMax),Y(idMax),Z(idMax)+1,'$\nabla$','HorizontalAlignment','center')    
text(X(idMin),Y(idMin),Z(idMin)-1,'Lowest point','Rotation',-45) 
text(3,-3,-8,'$<XML>$'); % New in version 1.2: escape xml characters
% greeks(3,2) = {'Ridiculous long tick'}; % 3d rotation of long ticks do
% not work yet.
% view([-42.5,10]); % Supply view on 3D image

title('Transparency works')
legend('$I_{am_{Legend}}$\hspace{0.3cm}','Location','northeast') % use hspace to tweak legend box size
set(gca,'XTickLabel',greeks(:,3));
set(gca,'YTickLabel',greeks(:,2));
xlabel('x');ylabel('y');zlabel('z');

%% Finalize figure to look like you want it in latex
% Specify width and hight of figure and the fontsize. They should correspond 
% more or less with size in latex.

h.Units = 'centimeters'; % set figure position to cm
h.Position(2) = [h.Position(2)-8.5]; % set figure position before resize
h.Position([3:4]) = [13,18]; % resize figure
set(findall(h,'-property','FontSize'),'FontSize',10); % change font size
ChangeInterpreter(gcf,'Latex');

%% Run the Plot2LaTeX script
Plot2LaTeX( h, 'ExampleFigure' )

%% Now run the latex file (IncludeDemoFig.tex) to generate document
