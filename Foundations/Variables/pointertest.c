#include "console.h"

//month is a global variable which identifies a 32-bit integer value
int month = 0;

//year is an array of twelve 64-bit integer values
long long int year[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

int main(void)
{
	//pm is a pointer which identifies the address of a 32-bit integer value
	//it is initialized with address of value identified by month variable
	int* pm = &month;

	month = GetInt("Month[1-12]: ");
	
	//applying any operation to pm[0] or *pm will indirect to the value (of month) addressed by pm
	*pm = *pm - 1; //pm[0] = pm[0] - 1;
	PutInt("Index of Month = ", month);
	//an array is actually a pointer which addresses its first element
	PutInt("Number of Days = ", year[month]);
}

