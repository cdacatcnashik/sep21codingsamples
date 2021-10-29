	.set sysarch, _x64_
	.include "console.i"

	.text

	.entry main
main:	
	#input an integer value (N) in variable upper
	GetInt	asku, upper

	#rax=N
	mov	rax, upper

	#rcx=rax+1=N+1
	mov	rcx, rax
	add	rcx, 1

	#rax=(rax*rcx)>>1=N*(N+1)/2
	mul	rcx
	shr	rax, 1

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



