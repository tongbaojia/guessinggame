all: README.md guessinggame.sh

README.md:
	touch README.md
	echo "# Tony's Guessing Game" >> README.md
	echo "## " >> README.md
	date >> README.md
	echo "guessinggame.sh has" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "lines." >> README.md

clean:
	rm README.md