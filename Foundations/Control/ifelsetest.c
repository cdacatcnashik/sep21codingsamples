#include <stdio.h>

int main(void)
{
	int lower, upper;

	printf("Lower and Upper Limits: ");
	scanf("%d%d", &lower, &upper);

	if(upper > lower)
	{
		long long int total = upper * (upper + 1) / 2 - (lower - 1) * lower / 2;
		printf("Sum of Integers = %lld\n", total);
	}
	else
	{
		puts("Invalid range.");
	}

	puts("Goodbye!");

}

