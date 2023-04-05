\LoadClass{exam}

%\usepackage[paperheight=5.8in,paperwidth=8.27in,bindingoffset=0in,left=0.8in,right=1in, top=0.7in,bottom=1in,headsep=.5\baselineskip]{geometry}
%\usepackage[bindingoffset=0in,left=0.8in,right=0.8in, top=0.7in,bottom=1in,headsep=.5\baselineskip]{geometry}
\usepackage[left=1.2cm, right=2.5cm, bottom=2cm, top=2cm]{geometry}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{textcomp}
\usepackage[gen]{eurosym}
\usepackage{xcolor}
\usepackage{multicol}

\usepackage[normalem]{ulem}
\renewcommand\ULthickness{0.5pt}   %%---> For changing thickness of underline
\setlength\ULdepth{1.5ex}          %\maxdimen ---> For changing depth of underline
\renewcommand{\baselinestretch}{1}
\usepackage{fancybox} % 
\usepackage{graphicx} % Paquete necesario para incluir imágenes, cambiarles el tamaño, etc.
\graphicspath{ {img/} }
\usepackage{enumitem} % Para poder configurar las listas
\everymath{\displaystyle} % Esto es para que las expresiones se vean... grandes, que resulta diferente de si las queremos entre líneas.

% \renewcommand{\thepartno}{\arabic{partno}}
\usepackage{nicefrac, xfrac}

\usepackage{colortbl}
\definecolor{azul}{rgb}{0.17,0.40, 0.68}
\newcommand{\gray}{\rowcolor[gray]{.90}}

\usepackage{amssymb}
\usepackage{lmodern}
\usepackage{mathtools, nccmath}
\usepackage{polynom}
\usepackage{polynomial}
\usepackage{array,booktabs}
\usepackage{tkz-euclide}
\usepackage{tikz}
\usepackage{pgfplots}
\pgfplotsset{compat=1.6}

% Idioma y codificación de texto
\PassOptionsToPackage{T1}{fontenc}
\usepackage{fontenc}
\usepackage[utf8]{inputenc}
% Cargar babel y configurar para español
\usepackage[spanish,es-lcroman, es-tabla, es-noshorthands]{babel}

\usepackage{ragged2e}
\usepackage{listings}
% \usepackage{minted}
% \usepackage{markdown}
\usepackage{blindtext}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\schoolSubject} {  }
\newcommand{\school} {  }
\newcommand{\academicPeriod} { \phantom{ } }

\newcommand{\autor} { }
\newcommand{\emailAuthor} { }
\newcommand{\autorSing}{ }

\newcommand{\documentName} { }
\newcommand{\documentContent} { } 
\newcommand{\waterMark} {  } 

\author{\autor}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[pdfborder={0 0 0}, colorlinks=true, linkcolor=black, urlcolor=black, citecolor=black, pdfpagemode=UseNone]{hyperref}
\hypersetup{
    pdfauthor = \autor~(\emailAuthor),
    pdftitle = {\documentName \documentContent \schoolSubject},
    pdfsubject= {\documentName \documentContent \schoolSubject},
    pdfkeywords = {\schoolSubject \documentName \autor \school \academicPeriod \autorSing \waterMark}
}

\usepackage{background}
\backgroundsetup{
    position=current page.east,
    angle=90,
    color=black!95,
    %nodeanchor=east,
    hshift=-220mm,
    vshift=5mm,
    opacity=1,
    scale=0.5,
    contents={ \autorSing \phantom{123456789} \waterMark}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{eqparbox}
\usepackage{pgfplots}
\usepackage{pgfplotstable}
\pgfplotsset{compat=1.16}

\usepackage{pgfplots}
\pgfplotsset{compat=1.6}

\pgfplotsset{soldot/.style={color=red,only marks,mark=*}} \pgfplotsset{holdot/.style={color=red,fill=white,only marks,mark=*}}

\pgfplotsset{
    % Global Styles
    % axis lines = middle,
    % xlabel = $x$,
    % ylabel = $y$,
    % no markers,
    % samples=50,
    % grid = both,
    trig format plots=rad,
    grid style={dashed, gray!30},
    %enlargelimits = false,
    %axis line style = {line width=0.5pt},
    % every axis plot/.append style={
    %     line width = 1.25pt,
    %     smooth,
    %     },
    % Label every pi
    halves/.style={
    xtick = {-12.5664, -10.9956, -9.42478, -7.85398, -6.28319, -4.71239, -3.14159, -1.5708, 0, 1.5708, 3.14159, 4.71239, 6.28319, 7.85398, 9.42478, 10.9956, 12.5664, 14.1372, 15.708, 17.2788, 18.8496, 20.4204, 21.9911, 23.5619, 25.1327},
    xticklabels = {$-4\pi$,$-\frac{7\pi}{2}$,$-3\pi$,$-\frac{5\pi}{2}$,$-2\pi$,$-\frac{3\pi}{2}$,$-\pi$,$-\frac{\pi}{2}$,$0$,$\frac{\pi}{2}$,$\pi$,$\frac{3\pi}{2}$,$2\pi$,$\frac{5\pi}{2}$,$3\pi$,$\frac{7\pi}{2}$,$4\pi$,$\frac{9\pi}{2}$,$5\pi$,$\frac{11\pi}{2}$,$6\pi$,$\frac{13\pi}{2}$,$7\pi$,$\frac{15\pi}{2}$,$8\pi$}
    },
    % Label every pi
    wholes/.style={
    xtick = {-12.5664, -9.42478, -6.28319, -3.14159, 0., 3.14159, 6.28319, 9.42478, 12.5664, 15.708, 18.8496, 21.9911, 25.1327},
    xticklabels = {$-4\pi$,$-3\pi$,$-2\pi$,$-\pi$,$0$,$\pi$,$2\pi$,$3\pi$,$4\pi$,$5\pi$,$6\pi$,$7\pi$,$8\pi$}
    },
    soldot/.style={color=red,only marks,mark=*},
    holdot/.style={color=red,fill=white,only marks,mark=*},
    soldotBlack/.style={color=black,only marks,mark=*},
    holdotBlack/.style={color=black,fill=white,only marks,mark=*},
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Esto es de la clase exam. Si dejamos sin comentar \printanswers, se mostraran las soluciones. 
%% Si la comentamos y dejamos sin comentar \noprintanswers, pues no se muestran las soluciones.
%\printanswers
%\noprintanswers

\ifdefined\ifprintresults
    \printanswers 
\fi

%% Si se comenta no aparecerán los espacios de la solución.
%\nocancelspace

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% Datos de estudiante
\newcommand{\StudentData}{
    \ifprintanswers
    \else
        \raggedright
        \begin{tabular}{cc}
            \begin{minipage}{0.15\linewidth}
                \includegraphics[height=1.75cm]{./include/logo}
            \end{minipage} &
            \begin{minipage} {0.80\linewidth}
                Apellidos: \underline{\hspace{5cm}} \hspace{0.1cm} Nombre: \enspace{\hrulefill}
                \flushright Grupo: \underline{\hspace{0.7cm}} \hspace{0.1cm} Fecha: \underline{\hspace{2.1cm}}  \\
            \end{minipage}
        \end{tabular}
    \fi
}

\newcommand{\GradeTableHeader}{
    \ifprintanswers
        %Examen resulto
    \else
        %\StudentData

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Tabla para anotar la calificación
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \begin{center}
            %\resizebox{\textwidth}{!}{\gradetable[h][questions]} % Esto es por si la tabla sale muy grande, para ajustarla al ancho
            \gradetable[h][questions]
        \end{center}
        \vspace{0.1in} % Espacio vertical
    \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Cosas a configurar de la clase EXAM %%%%

\pagestyle{headandfoot}
\runningheadrule
\extraheadheight{1cm}

\firstpagefooter{}{}{\small Página \thepage\ de \numpages}
\runningfooter{}{}{\small Página \thepage\ de \numpages}

\pointpoints{punto}{puntos}
\bonuspointpoints{punto extra}{puntos extra}
\hqword{Pregunta}
\hpword{Puntos}
\hsword{Calificación}
\renewcommand{\solutiontitle}{\noindent\textbf{Solución:}\par\noindent}
\pointformat{(\emph{\thepoints})}
\bonuspointformat{(\emph{\thepoints})}
%\pointsinrightmargin % Para poner las puntuaciones a la derecha. Se puede cambiar. Si se comenta, sale a la izquierda.   

%\extrawidth{-1.8cm} %Un poquito más de margen por si ponemos textos largos.
\marginpointname{ \emph{\points}}
%\bracketedpoints

\renewcommand*\half{\!\hspace{0.6mm},5}

\headrule
\footrule

\firstpageheader
{\schoolSubject  \\ \small \school \\ \small \academicPeriod}
{}
{\documentName \\ \documentContent \\}

\runningheader
{\schoolSubject{}  \\ \small \school \\ \small \academicPeriod}
{}
{\documentName \\ \documentContent \\}

%%% No se divide la pregunta en dos páginas.
\newcommand{\QuestionNoBreak}[1]
{
    \question{
        \penalty-5000
            #1
    }
}

\newcommand{\PartNoBreak}[1]
{
    \part{
        \penalty-5000
            #1
    }
}

%%% Código fuente
\definecolor{backgroundColour}{rgb}{0.97,0.97,0.94}

\lstdefinestyle{sharpc}
{
    language=[Sharp]C, 
    backgroundcolor=\color{backgroundColour}, 
    frame=l, 
    rulecolor=\color{black},
    basicstyle=\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
}