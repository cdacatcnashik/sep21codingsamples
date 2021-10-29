#include <stdio.h>

float PrimarySequence(int n)
{
	return 6 * n + 1;
}

float SecondarySequence(int n)
{
	return n * n + 2;
}

/*
double PrimarySum(int lower, int upper)
{
	double total = 0;
	register int i;

	for(i = lower; i <= upper; ++i)
		total += PrimarySequence(i);

	return total;
}

double SecondarySum(int lower, int upper)
{
	double total = 0;
	register int i;

	for(i = lower; i <= upper; ++i)
		total += SecondarySequence(i);

	return total;
}
*/

//third parameter named term is of function-pointer type and it identifies a function 
//which accepts one argument of int type and returns a result of float type
double SequenceSum(int lower, int upper, float (*term)(int))
{
	double total = 0;
	register int i;

	for(i = lower; i <= upper; ++i)
		total += term(i); //indirectly calling function identified by term

	return total;
}


int main(void)
{
	int l, u;
	
	printf("Lower and Upper Limits: ");
	scanf("%d%d", &l, &u);
	//printf("Primary Sum   = %lf\n", PrimarySum(l, u));
	//printf("Secondary Sum = %lf\n", SecondarySum(l, u));
	printf("Primary Sum   = %lf\n", SequenceSum(l, u, PrimarySequence));
	printf("Secondary Sum = %lf\n", SequenceSum(l, u, SecondarySequence));
}


