#include "banner3.h"
#include <iostream>

int main(void)
{
	int n;
	std::cout << "Number of Banners: ";
	std::cin >> n;

	if(n < 2)
	{
		Banner* b = new Banner(Elliptical); //explicitly allocating memory (using new) for an instance of Banner on runtime heap 
		b->Resize(15, 4);
		std::cout << "Area of Banner is " << b->Area() << std::endl;
		delete b; //explicitly removing instance (using delete) from the runtime heap
	}
	else
	{
		Banner* list = new Banner[n]; //dynamic (heap) allocation of memory for n elements of an array using default contructor for each element
		for(int i = 0; i < n; ++i)
		{
			list[i].Resize(i + 15, i + 4);
			std::cout << "Area of Banner " << (i + 1) << " is " << list[i].Area() << std::endl;
		}
		delete[] list; //deallocation of memory dynamically allocated for an array
	}
}

