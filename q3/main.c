#include <stdio.h>

typedef long long int ll;

extern void test(ll *a, ll *b);

void printb(ll num) {
	int size = sizeof(num);
	printf("size=%d\n", size);
	for(int i = 0; i < size*4; i++) {
		//printf("%d\n",( 1 << i ));
		printf("%d", ( 1 << i ) & num? 1 : 0);
	}
	printf("\n");
}

int main() {

	
	ll a=0, b = 0x3F;
	printb(b);
	printb(b << 15);
	test(&a, &b);
	printb(a);
	return 0;
}