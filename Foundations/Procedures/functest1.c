#include <stdio.h>

long long Compute(int count)
{
	return count * (count + 1) / 2;
}

int main(void)
{
	int lower, upper;

	printf("Lower and Upper Limit: ");
	scanf("%d%d", &lower, &upper);

	if(lower < upper)
	{
		long long total = Compute(upper) - Compute(lower - 1);
		printf("Sum of Integers = %lld\n", total);
	}
}

