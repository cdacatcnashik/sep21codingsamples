	.set sysarch, _x64_
	.include "console.i"

	#read-only memory segment used for holding program code and constants
	.text

	.entry main
main:
	PutMsg greet
	ret

greet:	.string	"Hello World!\n"

	.end

