#include <stdio.h>

extern void teste(long long int *a);

int main() {
	long long int x = 10;
	teste(&x);
	printf("%lld\n",x);
	return 0;
}