#include <stdio.h>

typedef long long int ll;
extern void teste(ll *a);

int main() {
	ll a=5;
	teste(&a);
	printf("%lld\n", a);
	return 0;
}