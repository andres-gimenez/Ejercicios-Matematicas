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
\AtBeginDocument
{ 
    \hypersetup{
        pdfauthor = \autor~(\emailAuthor),
        pdftitle = {\documentName \documentContent \schoolSubject},
        pdfsubject= {\documentName \documentContent \schoolSubject},
        pdfkeywords = {\schoolSubject \documentName \autor \school \academicPeriod \autorSing \waterMark}
    }
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