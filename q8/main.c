#include <stdio.h>

extern long long int test(char *s);

int main() {

	char s[]="1234";
	long long int ret = test(s);
	printf("%lld\n", ret);
	return 0;
}