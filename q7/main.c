#include <stdio.h>

extern char teste(char *s1, char *s2);

int main() {
	char s1[] = "ASSEMBLY";
	char s2[] = "AAA";
	char c = teste(s1, s2);
	printf("%c\n",c);
	return 0;
}