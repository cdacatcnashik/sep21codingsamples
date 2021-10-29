#include <stdio.h>

/*
void SwapIntegers(int* first, int* second)
{
	int third = *first;
	*first = *second;
	*second = third;
}

void SwapDoubles(double* first, double* second)
{
	double third = *first;
	*first = *second;
	*second = third;
}
`*/

//void pointer can address data of any type, 
//it does not support indirection (using * or [] operators)
//it supports implicit(automatic) conversion from/to other type of pointers
void SwapAny(void* first, void* second, unsigned long n)
{
	char* pf = first; //implicit conversion of void* to char*
	char* ps = second;
	register int i;

	for(i = 0; i < n; ++i)
	{
		char t = pf[i];
		pf[i] = ps[i];
		ps[i] = t;
	}
}

//macro is substitution rule
#define Swap(X, Y) SwapAny(&X, &Y, sizeof(X))

int main(void)
{
	int ix = 23, iy = 32;
	double dx = 3.4, dy = 4.3;

	printf("Original int values = %d, %d\n", ix, iy);
	//SwapIntegers(&ix, &iy);
	//SwapAny(&ix, &iy, 4); //implicit conversion of int* to void*
	Swap(ix, iy); //SwapAny(&ix, &iy, 4)
	printf("Swapped int values = %d, %d\n", ix, iy);
	printf("Original double values = %lf, %lf\n", dx, dy);
	//SwapDoubles(&dx, &dy);
	//SwapAny(&dx, &dy, 8);
	Swap(dx, dy);
	printf("Swapped double values = %lf, %lf\n", dx, dy);
}

