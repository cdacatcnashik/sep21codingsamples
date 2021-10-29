#include <stdio.h>

extern long GCD(long, long); //extern = this function is published by some other module

int main(void)
{
	long m, n;

	printf("Two Positive Integers: ");
	scanf("%ld%ld", &m, &n);
	printf("G.C.D = %ld\n", GCD(m, n));
}

