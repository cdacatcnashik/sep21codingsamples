from ctypes import *

primes = CDLL('./primes.so')
n = int(input('Upper Limit: '))
print('Number of Primes =', primes.CountPrimes(1, n))

