\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simpcrep}[2022/06/01 v1.0 Simple Chinese Report class]

% 基于 ctexrep 类
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexrep}}
\ProcessOptions\relax
\LoadClass[fontset=none, UTF8]{ctexrep}

\RequirePackage{titling}
\RequirePackage{geometry}
\RequirePackage{listings}
\RequirePackage{hyperref}

% 设置默认字体
\setmainfont{Times New Roman}
\setCJKmainfont[ItalicFont={Noto Sans CJK SC}, BoldItalicFont={Noto Sans CJK SC}]{Source Han Serif SC}
\setCJKmonofont{Noto Sans CJK SC}
\setCJKsansfont{Noto Sans CJK SC}

% 版面
\geometry{a4paper,scale=0.8}

% 标题
\pretitle{\begin{flushleft}\huge\begin{textbf}}
    \posttitle{\par\end{textbf}\end{flushleft}}
\preauthor{\begin{flushleft}
\begin{tabular}[t]{r}}
    \postauthor{\end{tabular}\par\end{flushleft}}
\predate{\begin{flushleft}\small}
\postdate{\par\end{flushleft}}

% 超链接
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=magenta,      
    urlcolor=cyan,
    pdftitle={Overleaf Example},
    pdfpagemode=FullScreen,
}