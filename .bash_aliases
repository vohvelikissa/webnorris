chucknorris() {
	cd ~/Jokes
	wget -q https://api.chucknorris.io/jokes/random/ && cat index.html | sed "s/,/\n/g" | grep "value" | sed "s/:/\n/g" | sed "s/\"//g" | sed "s/}//g" | grep "C" && rm index.html
	cd -
}
webnorris() {
	echo "<p>$(chucknorris | head -n 1)</p>"
}

