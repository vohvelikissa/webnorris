chucknorris() {
	cd ~/Jokes
	wget -q https://api.chucknorris.io/jokes/random/
	cat index.html \
	| sed "s/,/\n/g" \
	| grep "value" \
	| sed "s/:/\n/g" \
	| sed "s/\"//g" \
	| sed "s/}//g" \
	| grep "C"
	rm *
	cd -
}
chucktag() {
	echo "<$1>$2</$1>\n"
}
webnorris() {
	chucktag "p" "$(chucknorris | head -n 1)"
}
webnorris2() {
	~/projects/webnorris/a.out "$(webnorris)"
}
chucktemplate() {
	echo "<html>"
	echo "<head>"
	echo "<title>$1</title>"
	echo "</head>"
	echo "<body>"
	echo "$2"
	echo "</body>"
	echo "</html>"
}
chucktemplate2() {
	chucktemplate "$1" "$(webnorris2)"
}
chucktovim() {
	chucktemplate2 $1 > "$(date -I)$1.html"
	vim "$(date -I)$1.html"
}
