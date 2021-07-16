#include <stdio.h>

extern long long int teste(char *s1, char *s2);

int main() {
	char s1[] = "leg";
	char s2[] = "grnrclszemskvbgcluwtgyvieip";
	long long int r = teste(s1, s2);
	printf("a palavra pode ser formada %lld vezes\n", r);
	return 0;
}