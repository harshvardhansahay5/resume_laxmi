%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]

\LoadClass[11pt,letterpaper]{article}

\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}
\usepackage{xcolor}
\usepackage{hyperref}

\definecolor{primary}{HTML}{1F3864}
\definecolor{neutral}{HTML}{333333}
\definecolor{accent}{HTML}{7F8C9B}
\definecolor{accentline}{HTML}{7F8C9B}

\hypersetup{
  colorlinks=false,
  filecolor=magenta,
  urlcolor=blue,
  pdfauthor={Laxmi Rathi},
  pdftitle={Resume - Laxmi Rathi},
  pdfsubject={Professional Resume of Laxmi Rathi},
  pdfkeywords={Resume, HR Business Partner, Employee Lifecycle Management, Talent Management, Workforce Planning, HR Operations, Laxmi Rathi},
  pdfproducer={LaTeX},
  pdfcreator={pdflatex}
}

\pagestyle{empty}

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \addressSep {$\diamond$}

\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

\def \address #1{
  \@ifundefined{@addressone}{
    \def \@addressone {#1}
  }{
    \@ifundefined{@addresstwo}{
      \def \@addresstwo {#1}
    }{
      \def \@addressthree {#1}
    }}
}

\def \printaddress #1{
\begingroup
\def \\ {\addressSep\ }
\centerline{#1}
\endgroup
\par
\addressskip
}

\def \printname {
  \centerline{\textcolor{primary}{\MakeUppercase{\namesize\bf \@name}}}
  \nameskip
}

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document
  \printname
  \@ifundefined{@addressone}{}{
    \printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{
    \printaddress{\@addresstwo}}
  \@ifundefined{@addressthree}{}{
    \printaddress{\@addressthree}}
}

\newenvironment{rSection}[1]{
  \sectionskip
  {\textcolor{primary}{\MakeUppercase{{\bf #1}}}}
  \sectionlineskip
  {\color{accentline}\hrule}
  \begin{list}{}{
      \setlength{\leftmargin}{0em}
    }
    \item[]
          }{
  \end{list}
}

\newenvironment{rSubsection}[4]{
  \textcolor{neutral}{\textbf{#1}} \hfill \textcolor{muted}{#2}\\
  \textcolor{primary}{#3} \hfill \textit{\textcolor{muted}{#4}}
}{
  \vspace{0.4em}
}

\def\namesize{\LARGE}
\def\addressskip{\smallskip}
\def\sectionlineskip{\medskip}
\def\nameskip{\medskip}
\def\sectionskip{\medskip}