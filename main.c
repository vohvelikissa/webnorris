#include<stdio.h>

int main(int args, char * argv[]) {
	if(args >= 2) {
		if(argv[1][3] == '/') {
			printf("<p>Chuck Norris does not make programming bugs.</p>\n");
		} else {
			printf("%s\n", argv[1]);
		}
	}
}
