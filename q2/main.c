#include <stdio.h>

typedef long long int ll;

extern void test(ll *a, ll *b, ll *c, ll *x);

int main() {

	ll a=0, b=64, c=25, x=1;
	test(&a, &b, &c, &x);
	printf("%lld %lld %lld %lld\n", a, b, c, x);
	return 0;
}