	.set sysarch, _a64_
	.include "console.i"

	.text

	.entry main
main:	
	#input an integer value (N) in variable upper
	GetInt	asku, upper

	#x0=N
	ldr	x0, upper

	#x1=x0+1=N+1
	add	x1, x0, 1

	#x0=(x0*x1)>>1=N*(N+1)/2
	mul	x0, x0, x1
	lsr	x0, x0, 1

	#output integer value in rax
	PutInt	tell

	ret

asku:	.string	"Upper Limit: "
tell:	.string	"Sum of Integers = "


	#writable segment of memory used for program variable
	.data

upper:	.quad	0

#upper label identifies logical address of memory-space assigned to a 64-bit (quad-word) integer value

	.end



