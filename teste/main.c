#include <stdio.h>

extern void soma(long long int *a, long long int *b, long long int *res);

int main() {
	long long int a=1, b=2, c;
	soma(&a, &b, &c);
	printf("%lld\n", c);
	return 0;
}