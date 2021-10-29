#include <iostream>

//this function is in an object module compiled with C compiler
//and as such its name is not mangled
extern "C" int CountPrimes(long, long);

int main(void)
{
	long lower, upper;
	
	std::cout << "Lower and Upper Limits: ";
	std::cin >> lower >> upper;
	std::cout << "Number of Primes = "
		  << CountPrimes(lower, upper)
		  << std::endl;
}

