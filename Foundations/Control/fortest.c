#include <stdio.h>

int main(void)
{
	long lower, upper;
	register long current, total = 0;

	printf("Lower and Upper Limit: ");
	scanf("%ld%ld", &lower, &upper);

	for(current = lower; current <= upper; ++current)
	{
		total += current * current;
	}

	printf("Sum of Squares = %ld\n", total);
}



