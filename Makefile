


all:  crashCoursePaparazziPart1.pdf  crashCoursePaparazziPart2.pdf  crashCoursePaparazziPart3.pdf  crashCoursePaparazziPart4.pdf

crashCoursePaparazziPart1.pdf: crashCoursePaparazziWeek1.tex
	pdflatex crashCoursePaparazziWeek1.tex -job-name=crashCoursePaparazziPart1
crashCoursePaparazziPart2.pdf: crashCoursePaparazziWeek2.tex
	pdflatex crashCoursePaparazziWeek2.tex -job-name=crashCoursePaparazziPart2
crashCoursePaparazziPart3.pdf: crashCoursePaparazziWeek3.tex
	pdflatex crashCoursePaparazziWeek3.tex -job-name=crashCoursePaparazziPart3
crashCoursePaparazziPart4.pdf: crashCoursePaparazziWeek4.tex
	pdflatex crashCoursePaparazziWeek4.tex -job-name=crashCoursePaparazziPart4

export: crashCoursePaparazziPart1.pdf crashCoursePaparazziPart2.pdf crashCoursePaparazziPart3.pdf crashCoursePaparazziPart4.pdf
	git stash && git checkout build && git stash pop

clean:
	rm *.aux *.out *.log

.PHONY: export clean
