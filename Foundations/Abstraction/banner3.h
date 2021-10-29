#include <iostream>

enum Geometry {Rectangular = 100, Triangular = 50, Elliptical = 79};

class Banner
{
public:
	//parameterized constructor whose all parameters are defined with default arguments
	//can be used by the compiler as default constructor.
	Banner(Geometry g = Rectangular)
	{
		region = 12 * 3;
		shape = g;
		std::cout << "Banner instance initialized" << std::endl; //side effect of constructor
	}


	bool Resize(float w, float h)
	{
		if(w > h)
		{
			region = w * h;
			return true;
		}
		return false;
	}

	double Area() const
	{
		return 0.01 * shape * region;
	}

	//destructor is a member function which reverses(~) any side effect of the constructor
	//it is automatically called on an instance before it is removed from the memory
	//for an instance with implicitly allocated memory the destructor is called immediately
	//after its identifying object goes out of scope (stack-semantics)
	~Banner()
	{
		std::cout << "Banner instance finalized" << std::endl;
	}

private:
	double region;
	Geometry shape;
};

