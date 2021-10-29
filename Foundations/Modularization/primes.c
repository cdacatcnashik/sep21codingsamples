//static symbol is not published by the compiled module
static int IsPrime(long n)
{
	register long i;

	if(n == 1)
		return 0;
	if(n == 2 || n == 3)
		return 1;
	if((n % 2) == 0 || (n % 3) == 0)
		return 0;
	/*
	for(i = 5; i < n; i += 2)
	{
		if((n % i) == 0)
			return 0;
	}
	*/
	for(i = 5; i * i <= n; i += 6)
	{
		register int j = i + 2;

		if((n % i) == 0 || (n % j) == 0)
			return 0;
	}

	return 1;
}

int CountPrimes(long lower, long upper)
{
	register long n, count = 0;

	for(n = lower; n <= upper; ++n)
		count += IsPrime(n);
	
	return count;
}


