\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2018/10/17 Class for thesis]

% \newcommand{\headlinecolor}{\normalcolor}
\LoadClass{article}
% \RequirePackage{xcolor}
% \definecolor{slcolor}{HTML}{882B21}

\RequirePackage{import}

\RequirePackage{etoolbox}
\providebool{draftmode}
\boolfalse{draftmode}
\DeclareOption{draftmode}{\booltrue{draftmode}}
\ProcessOptions\relax

\ifbool{draftmode}{\message{Draft mode activated}}{\message{Draft mode deactivated}}

\RequirePackage[margin=1.0in]{geometry}

\ifbool{draftmode}{
    \RequirePackage{draftwatermark}
    \SetWatermarkText{DRAFT}
    \SetWatermarkScale{7}
    \SetWatermarkLightness{0.9}
    }{}


\usepackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}

\setlength\parindent{0pt}


\RequirePackage{amsmath}


\RequirePackage{mainsty}