% Author : adarsh
% No guarantees/promises of any kind - Use at your own risk
% A CV format based on material design guidelines
% Design goals:
% minimal, modern and material 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MatCV}[2016/07/12 Minimal Material CV class]
\LoadClass{article}


% To change margins
\RequirePackage[top=0cm, bottom=2cm, outer=0.5cm, inner=4cm]{geometry}

% Set Font to be Roboto
\RequirePackage{fontspec}
\setmainfont{Roboto}

% For pic title
\RequirePackage{tikz}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{graphicx}

% Set material design colors
\RequirePackage{xcolor}
\definecolor{teal700}			{HTML}{00796b}
\definecolor{red500}			{HTML}{f44336}
\definecolor{red900}			{HTML}{b71c1c}
\definecolor{pink500}			{HTML}{e91e63}
\definecolor{pink500}			{HTML}{e91e63}
\definecolor{purple800}			{HTML}{6a1b9a}
\definecolor{lightblue500}		{HTML}{03a9f4}
\definecolor{limeA400}			{HTML}{c6ff00}
\definecolor{green700}			{HTML}{388e3c}
\definecolor{bluegrey800}		{HTML}{37474f}
\definecolor{mygray}			{gray}{0.88}
\newcommand{\mattheme}{teal700}

% Section headers are formatted to be in margin
\RequirePackage[compact]{titlesec}

% we'll work with a new environment so that we don't change
% default options
\newenvironment{newsection}
{
	\setcounter{secnumdepth}{0}%
	\titleformat{\section}[leftmargin]
	{\Large
		\vspace{6pt}%
	\bfseries\raggedright }
	{\thesection}{.5em}{}[]
	\titlespacing{\section}
	{7pc}{1.5ex plus .1ex minus .2ex}{*0}
%		{7pc}{1.5ex plus .1ex minus .2ex}{1pc}
}
{\setcounter{secnumdepth}{2}}

\newcommand{\matsection}[2]{
	\begin{newsection}
		\section{\textcolor{\mattheme}{#1\vss}} #2

		\emph{\textcolor{mygray}{\rule{\textwidth}{0.0001mm}}}
	\end{newsection}
	}
% Setting the title
\RequirePackage[pages=some]{background}
\backgroundsetup{
	scale=1,
	color=black,
	opacity=1,
	placement=top,
	angle=0,
	contents={%
		\includegraphics[width=\paperwidth,height=100pt]{images/pic_\mattheme}
	}%
}

% command to make title
\newcommand{\mattitle}[1]{
	\pagenumbering{gobble}
	\vspace*{10pt} 
	\BgThispage
	\begin{center}
		\hspace*{-3.5cm}
		{\textcolor{white}{{\Huge #1}}}
	\end{center}
	\BgThispage
	\vspace*{30pt}
}

% Command to make picture title
\newcommand{\matpictitle}[2]{
	\pagenumbering{gobble}
	\vspace*{0pt} 
	\BgThispage
	\noindent\begin{tikzpicture}
	% one picture
	\node[] at (0,0) {};
	\node[circle,draw,thick, color=white, inner sep=0.8cm,fill zoom image=#2] at (4,0.2)  {};
	\node[] at (8,0) {{\textcolor{white}{\Huge #1}}};
	\node[] at (0,-0.4) {};
	\end{tikzpicture}
	\BgThispage
	\vspace*{30pt}
}

% command to make a single cv entry
\newcommand{\matentry}[4]{
	\textbf{#1}, #2 
	
	\textsl{#3} \hfill \textbf{#4}
}

% commands to get compact lists
% taken as is from
% RESUME DOCUMENT STYLE -- Released 23 Nov 1989
%    for LaTeX version 2.09
% Copyright (C) 1988,1989 by Michael DeCorte
% Copyright (c) 1988 by Michael DeCorte
% Permission to copy all or part of this work is granted, provided
% that the copies are not made or distributed for resale, and that
% the copyright notice and this notice are retained.
%
% THIS WORK IS PROVIDED ON AN "AS IS" BASIS.  THE AUTHOR PROVIDES NO
% WARRANTY WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THE WORK,
% INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR FITNESS
% FOR ANY PARTICULAR PURPOSE.
\newenvironment{list1}{
	\begin{list}{\ding{113}}{%
			\setlength{\itemsep}{0in}
			\setlength{\parsep}{0in} \setlength{\parskip}{0in}
			\setlength{\topsep}{0in} \setlength{\partopsep}{0in} 
			\setlength{\leftmargin}{0in}}}{\end{list}}

\newenvironment{list2}{
	\begin{list}{$\bullet$}{%
			\setlength{\itemsep}{0in}
			\setlength{\parsep}{0in} \setlength{\parskip}{0in}
			\setlength{\topsep}{0in} \setlength{\partopsep}{0in} 
			\setlength{\leftmargin}{0.25in}}}{\end{list}}


