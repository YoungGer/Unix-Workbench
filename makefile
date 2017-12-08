all: README.md

README.md: 
	@echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	@echo "The date and time when 'make' was run and *REAMDE.md* was created: " >> README.md
	@date '+%D %T' >> README.md
	@echo "  " >> README.md
	@echo "The number of lines in *guessinggame.sh*:" >> README.md
	@wc -l <  guessinggame.sh >> README.md

clean:
	rm README.md
