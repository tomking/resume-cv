\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tomking-resume-cv}[2023/11/19 Tomking resume/cv master class v1.0]

% ----------
% Option Definitions
% ----------

% Pass remaining options through, process given options, load parent class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% ----------
% Package Imports
% ----------

\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{ulem}
\RequirePackage{etoolbox}
\RequirePackage{multicol}
\RequirePackage{hyperref}

% ----------
% Config
% ----------

\setcounter{secnumdepth}{0}
\setlength\parindent{0pt}

\graphicspath{{./img/}}

\geometry{left=1cm, right=1cm, top=0.5cm, bottom=0.5cm, includefoot}

\setlist{nosep}
\renewcommand\labelitemi{-}

\pagestyle{fancy}
% Clear header and footer
\fancyhead{}
\fancyfoot{}
% Set header rule
\renewcommand{\headrulewidth}{0pt}
% Set footer content
\fancyfoot[L]{\footnotesize \color{darkgray} \today}
\fancyfoot[C]{\footnotesize \color{darkgray} Thomas King - Resume}
\fancyfoot[R]{\footnotesize \color{darkgray} \thepage}

% ----------
% Command Definitions
% ----------

% \componentheader{Title}
\newcommand*{\componentheader}[1]{ \par \vspace{6pt} {\LARGE \textbf{\sffamily \uline{#1 \hfill}}}}

% \componentitem{Title}{Date}{Secondary}{Extra}{Main Text}
\newcommand*{\componentitem}[5]{
    \vspace{5pt}
    \begin{tabular}{@{} l c c}
        {\sffamily \large \textbf{#1}} \\
        {\sffamily \small \color{darkgray} #3} \\
    \end{tabular}
    \hfill
    \begin{tabular}{r c c}
        {\sffamily \color{violet} \small \textbf{#2}} \\
        {\sffamily \color{darkgray} \footnotesize #4} \\
    \end{tabular}
    \notblank{#5}{\vspace{3pt}}{}
    \par
    {\footnotesize #5}
}