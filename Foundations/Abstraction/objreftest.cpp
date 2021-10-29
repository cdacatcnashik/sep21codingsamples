#include "banner3.h"

//a function should accept an object type argument using a parameter of reference type
//to avoid copying of instance and invocation of destructor on that copy, this parameter
//should be declared with const qualifier to indicate that it will treat the addressed
//instance as read-only
double BannerPrice(const Banner& info, int copies)
{
	float rate = copies < 5 ? 0.8 : 0.75;
	return copies * rate * info.Area();
}

void Run(void)
{
	Banner b(Triangular);
	std::cout << "Second Banner Price: " << BannerPrice(b, 1) << std::endl;
}

int main(void)
{
	Banner a;
	std::cout << "First Banner Price: " << BannerPrice(a, 1) << std::endl;

	//std::cout << "Entering Run" << std::endl;
	Run();
	//std::cout << "Run Exited" << std::endl;

	Banner c(Elliptical);
	std::cout << "Third Banner Price: " << BannerPrice(c, 1) << std::endl;

}

