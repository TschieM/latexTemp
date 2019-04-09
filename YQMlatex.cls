\NeedsTeXFormat{LaTeX2e}[1994/06/01]%
\ProvidesClass{YQMlatex}[2019/04/08 YQMlatexClass]%
%
\pdfminorversion=4%
\pdfobjcompresslevel=0%
%
% dependencies
\RequirePackage{./pkg/YQMcore}%
%
% options
% math options
\DeclareOption{optLeftEquations}{\def\optLeftEquations{x}}%
\DeclareOption{optCenterEquations}{\def\optCenterEquations{x}}%
% bib options
\DeclareOption{optBiber}{\def\optBiber{x}}%
\DeclareOption{optBibtex}{\def\optBibtex{x}}%

% Styles: (+ passing global options to baseclass)
\DeclareOption{YQMreport}{\def\optYQMreport{x}\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}}%
%-------------------------------------------------------------------------------
%
\ProcessOptions\relax% End of option declaration

\ifdefined \optYQMreport
  \LoadClass[11pt,a4paper,fleqn]{article}
  \RequirePackage{./pkg/YQMreport}%
  \ifdefined\optLeftEquations
    \PassOptionsToPackage{optLeftEquations}{./pkg/YQMreport}
  \else
    \PassOptionsToPackage{optCenterEquations}{./pkg/YQMreport}
  \fi
  \ifdefined\optBiber%
    \PassOptionsToPackage{optBiber}{./pkg/YQMreport}%
  \else%
    \PassOptionsToPackage{optBibtex}{./pkg/YQMreport}%
  \fi%
\else\fi%

\endinput%
