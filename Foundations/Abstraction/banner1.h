class Banner
{
public: //any member declared in this block is visible outside the scope of this class
	
	//member functions (methods)
	
	bool Resize(float w, float h)  //bool Banner::Resize(Banner* this, float w, height h)
	{
		if(w > h)
		{
			width = w; //this->width = w;
			height = h; //this->height = h;
			return true;
		}
		return false;
	}

	//const member function does not modify values of member variables 
	//i.e it treats the instance addressed by 'this' argument as read-only
	double Area() const //double Banner::Area(const Banner* this)
	{

		return width * height; //return this->width * this->height;
	}

private: //any member declared in this block is only visible inside the scope of this class
	
	//member variables (fields)
	float width;
	float height;
};

