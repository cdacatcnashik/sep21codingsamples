#include <stdio.h>

int main(void)
{
	short age;
	float rate;

	printf("Age: ");
	scanf("%hd", &age);

	switch(age)
	{
	case 16:
		rate = 125;
		break;
	case 18:
		rate = 150;
		break;
	case 21:
		rate = 250;
		break;
	case 50:
		rate = 500;
		break;
	default:
		rate = 100;
	}

	printf("Gift = %f\n", age * rate);

}

