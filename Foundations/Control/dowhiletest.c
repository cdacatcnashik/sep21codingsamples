#include <stdio.h>

int main(void)
{
	long num;
	register long a, b, c;

	printf("Positive Integer: ");
	scanf("%ld", &num);

	a = 1;
	b = num;
	c = 0;

	do
	{
		a = a * 10;
		c = c + 1;
	}
	while(a <= b);

	printf("Number of Digits = %ld\n", c);

}

