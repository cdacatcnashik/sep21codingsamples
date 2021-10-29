#include <iostream>

double Compute(int first, int last, short step) //_Z7Computeiis
{
	double result = 0;

	for(int value = first; value <= last; value += step)
	{
		result += value * value;
	}

	return result;
}

//function overloading - defining multiple functions with same name but different list of parameters types
double Compute(int count, short step) //_Z7Computeis
{
	return Compute(1, count, step);
}

int main(void)
{
	int l, u;
	short d;

	std::cout << "Lower and Upper Limits: ";
	std::cin >> l >> u;
	std::cout << "Step: ";
	std::cin >> d;

	std::cout << "Your Computation Result = "
		  << Compute(l, u, d) //call _Z7Computeiis
		  << std::endl;
	std::cout << "My Computation Result = "
		  << Compute(u, 1) //call _Z7Computeis
		  << std::endl;
}

