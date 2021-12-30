using System;

/*
C# supports top-level statements (from version 9.0 in Exe type project) which are
inserted by into the Main method of compiler generated Program class. 
Top-level statements cannot include
(1) Definition of a type since C# does not support local named types
(2) Mutiple methods with same name since C# does not support overloading for local functions
*/

//local function
double Average(double first, double second, params double[] other)
{
    double total = first + second;
    foreach(double value in other)
        total += value;
    return total / (other.Length + 2);
}

//returning a tuple from a method
(double, double) AverageWithDeviation(double first, double second)
{
    double avg = Average(first, second);
    double dev = first > second ? (first - second) / 2 : (second - first) / 2;
    return (avg, dev);
}

if(args.Length < 2)
{
    Console.WriteLine("Average of two values = {0:0.000}", Average(23.4, 32.7));
    Console.WriteLine("Average of three values = {0:0.000}", Average(23.4, 32.7, 19.2));
    Console.WriteLine("Average of five values = {0:0.000}", Average(23.4, 32.7, 19.2, 41.6, 13.8));
}
else
{
    double x = double.Parse(args[0]);
    double y = double.Parse(args[1]);
    (double a, double d) = AverageWithDeviation(x, y);
    Console.WriteLine("Average is {0:0.000} with a deviation of {1:0.000}", a, d);
}
