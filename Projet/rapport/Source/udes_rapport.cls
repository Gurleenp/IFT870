\DeclareOption{onecolumn}{\def\column{1}}
\DeclareOption{twocolumns}{\def\column{2}}

\ProcessOptions \relax
\LoadClass[twocolumn]{article}
\RequirePackage{ifthen}

\RequirePackage[french]{babel}

\RequirePackage{graphicx}

\RequirePackage{color}

\definecolor{main}{rgb}{0.0039, 0.53, 0.29}
\definecolor{sec}{rgb}{0.30, 0.52, 0.024}

\RequirePackage[T1]{fontenc}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage[a4paper, margin=1.5cm, includefoot, top=2.5cm]{geometry}
\setlength{\columnsep}{0.5cm}

%% Define the headers and footers:
\RequirePackage{fancyhdr}
\RequirePackage{textcomp}

\setlength{\headheight}{12.5pt}
\fancyhead[C]{
    \color{main}\small\sl 
    Forage de données: Projet de session. Équipe n°3
}
\fancyhead[L,R]{}
\renewcommand{\headrulewidth}{0pt}

\setlength{\footskip}{40pt}
\fancyfoot[C]{\arabic{page}}
\fancyfoot[L,R]{}
\pagestyle{fancy}


%% The front page:
\fancypagestyle{plain}{
    \fancyhead[C]{
        \makebox[\headwidth]{\raisebox{-2cm}[0pt][0pt]{
            \includegraphics[width=\textwidth]{Images/UDES_Logo.png}
        }}
    }
    \fancyhead[L,R]{}
    \renewcommand{\headrulewidth}{0pt}
    
    \fancyfoot[C,R]{}
    \fancyfoot[L]{\raisebox{10pt}{
        \begin{minipage}{\textwidth}\raggedright
            \color{main}\footnotesize 
        \end{minipage}
    }}
}

\RequirePackage{pageslts}

%% Modify the section headers:

\ifthenelse{\equal{\column}{1}}{
    \RequirePackage[big, noindentafter]{titlesec}
    \RequirePackage{sectsty}
    \sectionfont{\color{main}}
    \subsectionfont{\color{main}}
    \setcounter{secnumdepth}{1}
}{
    \RequirePackage[tiny, noindentafter]{titlesec}
    
    \titleformat{\section}{\large\bf\color{main}}{\thesection}{0em}{}
    \titlespacing{\section}{0pt}{*2}{*0}
    \titleformat{\subsection}{\sl\color{main}}{\thesubsection}{0em}{}
    \titlespacing{\subsection}{0pt}{*1.4}{*0}
    \titlespacing{\paragraph}{0pt}{*1}{*0}
    \setcounter{secnumdepth}{-1}
}

\newcommand{\newrule}[1]{\par
  \bigskip\noindent\rule{#1}{0.6pt}\par \bigskip
}


\ifthenelse{\equal{\column}{1}}{
    \renewcommand{\maketitle}{
        \pagenumbering{arabic}
        \setcounter{page}{1}
        \begin{flushright}
            {\color{white}.}\\\vspace{0.5cm}
            \color{main}\small
            \textbf{Forage de données, 2022}\\
        \end{flushright}
        \begin{NoHyper}
            \begin{minipage}{0.8\textwidth}
                \raggedright
                {\fontsize{25}{30pt}\fontseries{sb}\selectfont
                \color{main}\@title\par}
                
                \bigskip
                \renewcommand{\and}{, }
                \def \@makefntext##1{\@thefnmark. \textit{##1}}
                \renewcommand{\footnoterule}{}
                \renewcommand{\thempfootnote}{\arabic{mpfootnote}}
                \@author
            \end{minipage}
        \end{NoHyper}
        \newrule{\textwidth}
        \thispagestyle{plain}
    }
}{
    \renewcommand{\maketitle}{
        \pagenumbering{arabic}
        \setcounter{page}{1}
        \twocolumn[
            \vspace{1cm}
            \begin{flushright}
                \color{main}\small
                \textbf{Forage de données, 2022}\\
            \end{flushright}
            \begin{NoHyper}
                \begin{minipage}{0.8\textwidth}
                    \raggedright
                    {\fontsize{25}{30pt}\fontseries{sb}\selectfont
                    \color{main}\@title\par}
                    
                    \bigskip
                    \renewcommand{\and}{, }
                    \def \@makefntext##1{\@thefnmark. \textit{##1}}
                    \renewcommand{\footnoterule}{}
                    \renewcommand{\thempfootnote}{\arabic{mpfootnote}}
                    \@author
                \end{minipage}
            \end{NoHyper}
            \newrule{\textwidth}
        ]
        \thispagestyle{plain}
    }
}




%% Specify caption layout:
\RequirePackage[margin=5mm, footnotesize]{caption}

%% Reduce font size in the bibliography:
\AtBeginDocument{\renewcommand{\bibfont}{\normalfont\small}}

%% Finally, introduce hypertext references:
\RequirePackage[colorlinks=true, allcolors=sec, pdfborder={0 0 0}]{hyperref}
\urlstyle{sf}

\endinput
