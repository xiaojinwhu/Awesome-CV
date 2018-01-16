\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{test}[2018/01/15 My custom CV class]



%-------------------------------------------------------------
%                              页面布局
%-------------------------------------------------------------
\RequirePackage{geometry}
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

%----页眉页脚-----%
\RequirePackage{fancyhdr}  % 页眉页脚宏包
\fancyhfoffset{0em}  
\fancyhf{}  % 清空页眉页脚内容

     



%-------------------------------------------------------------
%                              配置颜色
%-------------------------------------------------------------

\RequirePackage{xcolor}

% Gray-scale colors 灰度颜色
\definecolor{white}{HTML}{FFFFFF}   % 白色
\definecolor{black}{HTML}{000000}   % 黑色
\definecolor{darkgray}{HTML}{333333}    % 黑灰
\definecolor{gray}{HTML}{5D5D5D}    % 灰
\definecolor{lightgray}{HTML}{999999}    %浅灰

% Basic colors  基础颜色
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

% Text colors 文本颜色
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{darkgray}  % 黑灰色文本
\colorlet{graytext}{gray}  % 灰色文本
\colorlet{lighttext}{lightgray}  % 浅灰文本

% Awesome-zh colors 可供配置的主题颜色
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}


%-------------------------------------------------------------
%                              样式
%-------------------------------------------------------------

\newcommand*{\headernamestyle}[1]{{\fontsize{32pt}{1em}\color{graytext} #1}}  % 名字样式
\newcommand*{\headerpositionstyle}[1]{{\fontsize{7.6pt}{1em}\scshape\color{awesome} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{6.8pt}{1em}\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\scshape\color{lighttext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{16pt}{1em}\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\upshape\color{text}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}  % 项标题样式
\newcommand*{\entrypositionstyle}[1]{{\fontsize{8pt}{1em}\bodyfont\scshape\color{graytext} #1}}  % 项职位样式
\newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}    % 项日期样式
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}   % 项地址样式
\newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}    % 项详情样式

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\slshape\color{awesome} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\upshape\color{text} #1}}


%-------------------------------------------------------------
%                              个人信息命令
%-------------------------------------------------------------
\newcommand{\photo}[2][circle,edge,left]{%
	\def\@photo{#2}
	\@for\tmp:=#1\do{%
		\ifthenelse{\equal{\tmp}{circle} \or \equal{\tmp}{rectangle}}%
		{\let\@photoshape\tmp}{}%
		\ifthenelse{\equal{\tmp}{edge} \or \equal{\tmp}{noedge}}%
		{\let\@photoedge\tmp}{}%
		\ifthenelse{\equal{\tmp}{left} \or \equal{\tmp}{right}}%
		{\let\@photoalign\tmp}{}%
	}%
}
\def\@photoshape{circle}
\def\@photoedge{edge}
\def\@photoalign{left}

% 中文支持
\RequirePackage{xeCJK}
\setCJKmainfont{NotoSerifCJKsc}[Path=fonts/, UprightFont=*-Regular.otf, BoldFont=*-Bold.otf]
%\setmainfont{Roboto}[Path=fonts/, UprightFont=*-Regular.ttf, BoldFont=*-Bold.ttf]