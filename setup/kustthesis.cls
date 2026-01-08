\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kustthesis}[2025/12/26 v1.0 KUST Thesis Class]

\LoadClass[a4paper,12pt,twoside]{article}

\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage{zhnumber}
\RequirePackage{ulem}
\RequirePackage{indentfirst}
\RequirePackage{amsmath}
\RequirePackage[superscript]{cite}
\renewcommand\citeform[1]{[#1]}
\RequirePackage{pifont}
\RequirePackage{floatrow}
\RequirePackage{listings}
\RequirePackage{enumerate}
\RequirePackage[labelsep=space]{caption}
\RequirePackage{titletoc}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage[left=30mm, right=25mm, bottom=20mm,top=10mm, includeheadfoot,headheight=30mm, headsep=5mm, footskip=20mm]{geometry}
\RequirePackage{fancyhdr}

% Graphics Path
\graphicspath{{figures/}}

% Float Settings
\floatstyle{plaintop}
\restylefloat{table}

% Font Definitions
\RequirePackage{xeCJK}

\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\setCJKmainfont[AutoFakeBold=true]{SimSun}
\setCJKsansfont[AutoFakeBold=true]{SimHei}
\setCJKmonofont{SimSun} % Or SimHei, using SimSun for consistency/availability

\newCJKfontfamily{\宋体黑}[AutoFakeBold=true]{SimSun}
\newCJKfontfamily{\songti}{SimSun}
\newCJKfontfamily{\huawen}{STXinwei}
\newCJKfontfamily{\黑体}[BoldFont=Microsoft YaHei Bold]{SimHei}
\newfontfamily{\TNR}{Times New Roman}
\newfontfamily{\TNRB}[BoldFont=* Bold]{Times New Roman}


% Formatting
\renewcommand{\thepage}{\arabic{page}}
\linespread{1.25}
\parindent=24pt

% Page Style
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.7]{kmust.png}\raisebox{5mm}{\huawen \fontsize{26pt}{39pt}\selectfont 昆明理工大学 设计（论文）专用纸}}
\fancyfoot[R]{\includegraphics[scale=0.8]{kmust2.png}}
\fancyfoot[C]{{\huawen 第}\thepage{\huawen 页}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

% Names
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\numberwithin{figure}{section}
\numberwithin{table}{section}
\renewcommand\thefigure{\arabic{section}-\arabic{figure}}
\renewcommand\thetable{\arabic{section}-\arabic{table}}
\renewcommand{\refname}{参考文献}
\renewcommand{\contentsname}{目录}
\renewcommand{\listfigurename}{图片目录}

% Code Listing Settings
\lstset{
	language=Python,
	tabsize=4,
    basicstyle=\ttfamily,
    keywordstyle=\color{blue}\ttfamily,
    stringstyle=\color{red}\ttfamily,
    commentstyle=\color{green}\ttfamily,
    morecomment=[l][\color{magenta}]{\#},
    extendedchars=false,
    breaklines  = true,
    numbers   = left
}

% Helper Formatting Commands
\newcommand{\setupTitleFormat}{
    \titleformat{\section}{\centering\黑体\fontsize{15pt}{20pt}\selectfont}{第\thesection 章}{1em}{}
    \titleformat{\subsection}{\黑体\fontsize{14pt}{20pt}\selectfont}{\thesubsection}{1em}{}
}

\newcommand{\setupTOCCN}{
    \titlecontents{section}[0pt]{}{摘\, 要}{}{\titlerule*[10pt]{$\cdot$}\contentspage}
}

\newcommand{\setupTOCEN}{
    \titlecontents{section}[0pt]{}{Abstract}{}{\titlerule*[10pt]{$\cdot$}\contentspage}
}

\newcommand{\setupTOCTOC}{
    \titlecontents{section}[0pt]{}{目录}{}{\titlerule*[10pt]{$\cdot$}\contentspage}
}

\newcommand{\setupTOCChapter}{
    \titlecontents{section}[0pt]{}{第\thecontentslabel 章\, }{}{\titlerule*[10pt]{$\cdot$}\contentspage}
}

\newcommand{\setupAppendix}{
    \titleformat{\section}{\黑体\fontsize{15pt}{20pt}\selectfont}{附录\thesection}{1em}{}
    \titlecontents{section}[0pt]{}{附录\thecontentslabel\, }{}{\titlerule*[10pt]{$\cdot$}\contentspage}
}

% Initialize defaults
\AtBeginDocument{
    \pagestyle{fancy}
    \setupTitleFormat
}
