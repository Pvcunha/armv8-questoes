#include <stdio.h>

extern void teste(long long int *a, long long int *b, long long int *res);

int main() {
	long long int a=10, b=3, m;
	teste(&a, &b, &m);
	printf("%lld\n%lld\n%lld\n",a, b, m);
	return 0;
}