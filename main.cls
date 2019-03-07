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
    }{
    \usepackage{graphicx}
    }

% Page break at sections
\RequirePackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}

% Bold in (section) titles
\g@addto@macro\bfseries{\boldmath}

% Fancy header
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\textit{\rightmark}}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}

% No paragraph indent
% \setlength\parindent{0pt}
\RequirePackage[parfill]{parskip}

% Command to resize tables to text width
\providecommand{\tabletextwidth}[1]{\resizebox{\textwidth}{!}{#1}}

% Packages
\RequirePackage{float} % To use the [H] float option
\RequirePackage{import}
\RequirePackage{amsmath}
\RequirePackage{tabularx}
\RequirePackage{topcapt}

% \RequirePackage{hyperref} % Needs to be *after* float
% Some extra options, copied from cms-tdr
\RequirePackage[bookmarksnumbered,bookmarksopen,bookmarksopenlevel=1,colorlinks=false,pdfborder={0 0 0},plainpages=false,pdfpagelabels]{hyperref}

% For alpha_s
\RequirePackage{booktabs}
\RequirePackage{makecell}
\RequirePackage{amssymb}
\RequirePackage{multirow}
\RequirePackage{bm}
\RequirePackage{doi}

\RequirePackage[numbers,sort&compress,merge]{natbib} % Makes sure citations get a dash

\RequirePackage{mainsty}
