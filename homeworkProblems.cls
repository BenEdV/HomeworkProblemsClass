%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a class file for homework assignments adapted from a template by
% Ted Pavlic (http://www.tedpavlic.com)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\LoadClass{article}

\usepackage{fancyhdr} % Required for custom headers
\usepackage{lastpage} % Required to determine the last page for the footer
\usepackage{extramarks} % Required for headers and footers
\usepackage[usenames,dvipsnames]{color} % Required for custom colors
\usepackage{graphicx} % Required to insert images
\usepackage{listings} % Required for insertion of code
\usepackage{courier} % Required for the courier font

% Margins
\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

\linespread{1.1} % Line spacing

% Set up the header and footer
\pagestyle{fancy}
\lhead{\@hmwkAuthorName} % Top left header
\chead{\@hmwkClass\ (\@hmwkClassInstructor): \@hmwkTitle} % Top center head
\rhead{\@hmwkAuthorID} %\firstxmark} % Top right header
\lfoot{\lastxmark} % Bottom left footer
\cfoot{} % Bottom center footer
\rfoot{\@rfooter{\thepage}{\protect\pageref{LastPage}}} % Bottom right footer
\renewcommand\headrulewidth{0.4pt} % Size of the header rule
\renewcommand\footrulewidth{0.4pt} % Size of the footer rule

\setlength\parindent{0pt} % Removes all indentation from paragraphs

%----------------------------------------------------------------------------------------
%	CODE INCLUSION CONFIGURATION
%----------------------------------------------------------------------------------------

\definecolor{MyDarkGreen}{rgb}{0.0,0.4,0.0} % This is the color used for comments
\lstloadlanguages{Perl} % Load Perl syntax for listings, for a list of other languages supported see: ftp://ftp.tex.ac.uk/tex-archive/macros/latex/contrib/listings/listings.pdf
\lstset{language=Perl, % Use Perl in this example
        frame=single, % Single frame around code
        basicstyle=\small\ttfamily, % Use small true type font
        keywordstyle=[1]\color{Blue}\bf, % Perl functions bold and blue
        keywordstyle=[2]\color{Purple}, % Perl function arguments purple
        keywordstyle=[3]\color{Blue}\underbar, % Custom functions underlined and blue
        identifierstyle=, % Nothing special about identifiers                                         
        commentstyle=\usefont{T1}{pcr}{m}{sl}\color{MyDarkGreen}\small, % Comments small dark green courier font
        stringstyle=\color{Purple}, % Strings are purple
        showstringspaces=false, % Don't put marks in string spaces
        tabsize=5, % 5 spaces per tab
        %
        % Put standard Perl functions not included in the default language here
        morekeywords={rand},
        %
        % Put Perl function parameters here
        morekeywords=[2]{on, off, interp},
        %
        % Put user defined functions here
        morekeywords=[3]{test},
       	%
        morecomment=[l][\color{Blue}]{...}, % Line continuation (...) like blue comment
        numbers=left, % Line numbers on left
        firstnumber=1, % Line numbers start with line 1
        numberstyle=\tiny\color{Blue}, % Line numbers are blue and small
        stepnumber=5 % Line numbers go in steps of 5
}

% Creates a new command to include a perl script, the first parameter is the filename of the script (without .pl), the second parameter is the caption
\newcommand{\perlscript}[2]{
\begin{itemize}
\item[]\lstinputlisting[caption=#2,label=#1]{#1.pl}
\end{itemize}
}

%----------------------------------------------------------------------------------------
%	DOCUMENT STRUCTURE COMMANDS
%----------------------------------------------------------------------------------------

% Header and footer for when a page split occurs within a problem environment
\newcommand{\enterProblemHeader}[1]{
\nobreak\extramarks{#1}{\@continuednp{#1}}\nobreak
\nobreak\extramarks{#1 (\@continued)}{\@continuednp{#1}}\nobreak
}

% Header and footer for when a page split occurs between problem environments
\newcommand{\exitProblemHeader}[1]{
\nobreak\extramarks{#1 (\@continued)}{\@continuednp{#1}}\nobreak
\nobreak\extramarks{#1}{}\nobreak
}

\setcounter{secnumdepth}{0} % Removes default section numbers
\newcounter{homeworkProblemCounter} % Creates a counter to keep track of the number of problems
\newcounter{homeworkSectionCounter}

\newcommand{\homeworkProblemName}{}
\newenvironment{homeworkProblem}[1][\@problem{\arabic{homeworkProblemCounter}}]{ % Makes a new environment called homeworkProblem which takes 1 argument (custom name) but the default is "Problem #"
\stepcounter{homeworkProblemCounter} % Increase counter for number of problems
\setcounter{homeworkSectionCounter}{0}
\renewcommand{\homeworkProblemName}{#1} % Assign \homeworkProblemName the name of the problem
\section{\homeworkProblemName} % Make a section in the document with the custom problem count
\enterProblemHeader{\homeworkProblemName} % Header and footer within the environment
}{
\exitProblemHeader{\homeworkProblemName} % Header and footer after the environment
}

\newcommand{\problemAnswer}[1]{ % Defines the problem answer command with the content as the only argument
\noindent\framebox[\columnwidth][c]{\begin{minipage}{0.98\columnwidth}#1\end{minipage}} % Makes the box around the problem answer and puts the content inside
}

\newcommand{\homeworkSectionName}{}
\newenvironment{homeworkSection}[1][(\alph{homeworkSectionCounter})]{ % New environment for sections within homework problems, takes 1 argument - the name of the section
\stepcounter{homeworkSectionCounter}
\renewcommand{\homeworkSectionName}{#1} % Assign \homeworkSectionName to the name of the section from the environment argument
\subsection{\homeworkSectionName} % Make a subsection with the custom name of the subsection
\enterProblemHeader{\homeworkProblemName\ \homeworkSectionName} % Header and footer within the environment
}{
\enterProblemHeader{\homeworkProblemName} % Header and footer after the environment
}

%----------------------------------------------------------------------------------------
%	TITLE PAGE
%----------------------------------------------------------------------------------------

\title{
\vspace{2in}
\textmd{\textbf{\@hmwkClass:\ \@hmwkTitle}}\\
\normalsize\vspace{0.1in}\small{\@dueOn{\@hmwkDueDate}}\\
\vspace{0.1in}\large{\textit{\@hmwkClassInstructor}}
\vspace{3in}
}

\author{\textbf{\@hmwkAuthorName}}
\date{} % Insert date here if you want it to appear below your name

%----------------------------------------------------------------------------------------
%	USER DEFINITIONS
%	These are to filled in the tex file, see example.tex
%----------------------------------------------------------------------------------------

\def\hmwkTitle#1{\def\@hmwkTitle{#1}}
\def\hmwkDueDate#1{\def\@hmwkDueDate{#1}}
\def\hmwkClass#1{\def\@hmwkClass{#1}}
\def\hmwkClassInstructor#1{\def\@hmwkClassInstructor{#1}}
\def\hmwkAuthorName#1{\def\@hmwkAuthorName{#1}}
\def\hmwkAuthorID#1{\def\@hmwkAuthorID{#1}}

%----------------------------------------------------------------------------------------
%	INTERNATIONALIZATION
%----------------------------------------------------------------------------------------

\newcommand{\@dueOn}[1]{Due\ on\ #1}
\newcommand{\@problem}[1]{Problem\ #1}
\newcommand{\@rfooter}[2]{Page\ #1\ of\ #2}
\newcommand{\@continued}{(continued)}
\newcommand{\@continuednp}[1]{#1 continued on next page\ldots}

\AtBeginDocument{
	\@ifpackagewith{babel}{dutch}{%
    	\renewcommand{\@dueOn}[1]{In\ te\ leveren\ op\ #1}%
		\renewcommand{\@problem}[1]{Opgave\ #1}%
		\renewcommand{\@rfooter}[2]{Pagina\ #1\ van\ #2}%
		\renewcommand{\@continued}{(vervolgd)}%
		\renewcommand{\@continuednp}[1]{#1 vervolgd op volgende pagina\ldots}%
  	}{}
}