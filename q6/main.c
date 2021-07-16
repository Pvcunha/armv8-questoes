#include <stdio.h>

typedef long long int ll;

extern ll teste(char *s);

int main() {
	char s[] = "OPA"; 
	ll r;
	r = teste(s);
	printf("%s %lld\n", s, r);
	return 0;
}