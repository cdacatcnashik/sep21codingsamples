#include <iostream>

int age = 32;

namespace Jack
{
	int age = 41;
}

int main(void)
{
	int age = 23;

	std::cout << (age + ::age + Jack::age) << std::endl;
}

