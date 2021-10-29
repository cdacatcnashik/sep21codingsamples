#include <iostream>

//reference type(T&) is a more readable and a safer (but less flexible) equivalent of pointer type(T*)
//which supports automatic indirection (without *) and automatic initialization (without &)
double Average(double first, double second, double& deviation) //_Z7AverageddRd
{
	deviation = first > second ? (first - second) / 2 : (second - first) / 2;
	return (first + second) / 2;
}

int main(void)
{
	using namespace std; //symbols within std namespace will be accessed without std::

	double x, y;
	cout << "Two real numbers: ";
	cin >> x >> y;

	double d;
	double a = Average(x, y, d);
	cout << "Average is " << a << " with a deviation of " << d << endl;
}


