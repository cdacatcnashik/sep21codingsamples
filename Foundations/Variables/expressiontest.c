#include "console.h"

//upper is an identifier of global variable containing a 64-bit (long long) integer (int) value
long long int upper = 0;

int main(void)
{
	//total is an identifier of a local variable containing a 64-bit integer value
	long long int total = 0;

	upper = GetInt("Upper Limit: ");
	total = upper * (upper + 1) / 2; //expression
	PutInt("Sum of Integers = ", total);
}

