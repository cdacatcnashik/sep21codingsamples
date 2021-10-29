#include <iostream>
#include <string>

//default arguments - enables compiler to implicitly pass specified constant values 
//for optional parameters appearing at the end of the parameter list
double Compute(int first, int last, short step=1) //_Z7Computeiis
{
	double result = 0;

	if(first > last)
		throw std::string("invalid range"); //exit this function to transfer control into std::string type exception handler

	for(int value = first; value <= last; value += step)
	{
		result += value * value;
	}

	return result;
}

int main(void)
{
	int l, u;
	short d;

	std::cout << "Lower and Upper Limits: ";
	std::cin >> l >> u;
	std::cout << "Step: ";
	std::cin >> d;
	
	try
	{
		std::cout << "Your Computation Result = "
			  << Compute(l, u, d) 
		  	  << std::endl;
		std::cout << "My Computation Result = "
			  << Compute(1, u) //Compute(1, u, 1);
		  	  << std::endl;
	}
	catch(std::string msg) //std::string type exception handler
	{
		std::cout << msg << std::endl;
	}

}

