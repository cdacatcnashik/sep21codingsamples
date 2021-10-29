#include "banner2.h"
#include <iostream>

double BannerPrice(Banner info, int copies)
{
	float rate = copies < 5 ? 0.8 : 0.75;

	return copies * rate * info.Area();
}

int main(void)
{
	float x, y;
	std::cout << "Banner Width and Height: ";
	std::cin >> x >> y;

	int n;
	std::cout << "Number of Copies: ";
	std::cin >> n;

	Banner a; //creating a new instance of Banner on stack using default constructor
	a.Resize(x, y); 
	std::cout << "Standard Banner Price: "
		  << BannerPrice(a, n)
		  << std::endl;

	Banner b;
	b.Resize(x + 1, y + 1);
	std::cout << "Premium Banner Price: "
		  << BannerPrice(b, n)	
		  << std::endl;

	Banner c(Elliptical); //creating a new instance of Banner on stack using parameterized constructor
	c.Resize(x, y);
	std::cout << "Curved Banner Price: "
		  << BannerPrice(c, n)	
		  << std::endl;
	
}

