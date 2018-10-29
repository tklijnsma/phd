\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2018/10/17 Class for thesis]
\LoadClass{article}

\RequirePackage{etoolbox}
\providebool{draftmode}
\boolfalse{draftmode}
\DeclareOption{draftmode}{\booltrue{draftmode}}
\ProcessOptions\relax

\ifbool{draftmode}{\message{Draft mode activated}}{\message{Draft mode deactivated}}

% Margins
\RequirePackage[margin=1.0in]{geometry}

% Line numbers
\RequirePackage{lineno}
\ifbool{draftmode}{
    \linenumbers
    }{}

% Draft watermark if in draftmode
\ifbool{draftmode}{
    \RequirePackage{draftwatermark}
    \SetWatermarkText{DRAFT}
    \SetWatermarkScale{7}
    \SetWatermarkLightness{0.9}
    }{}

% Page break at sections
\usepackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}

% Bold in (section) titles
\g@addto@macro\bfseries{\boldmath}

% No paragraph indent
\setlength\parindent{0pt}

% Packages
\RequirePackage{float} % To use the [H] float option
\RequirePackage{import}
\RequirePackage{amsmath}
\RequirePackage{tabularx}
\RequirePackage{hyperref} % Needs to be *after* float

% For alpha_s
\RequirePackage{booktabs}
\RequirePackage{makecell}
\RequirePackage{amssymb}
\RequirePackage{multirow}
\RequirePackage{bm}


\RequirePackage{mainsty}
