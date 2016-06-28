


all: 1.pdf 2.pdf 3.pdf 4.pdf

1.pdf: crashCoursePaparazziWeek1.tex
	pdflatex crashCoursePaparazziWeek1.tex 
2.pdf: crashCoursePaparazziWeek2.tex
	pdflatex crashCoursePaparazziWeek2.tex 
3.pdf: crashCoursePaparazziWeek3.tex
	pdflatex crashCoursePaparazziWeek3.tex 
4.pdf: crashCoursePaparazziWeek4.tex
	pdflatex crashCoursePaparazziWeek4.tex 

