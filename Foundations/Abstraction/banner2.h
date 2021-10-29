enum Geometry {Rectangular = 100, Triangular = 50, Elliptical = 79};

class Banner
{
public:
	//constructor is a member function whose name is same as the name of the class
	//it is called immediately after memory is allocated for a new instance of the class
	//a constructor which can be called without explicitly passing any argument is known as the default constructor
	//compiler defines a trivial (no-argument, no-operation) constructor if the class does explicitly define any constructor
	Banner()
	{
		region = 12 * 3;
		shape = Rectangular;
	}

	//parameterized constructor
	Banner(Geometry g)
	{
		region = 12 * 3;
		shape = g;
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

private: 
	double region;
	Geometry shape;
};

