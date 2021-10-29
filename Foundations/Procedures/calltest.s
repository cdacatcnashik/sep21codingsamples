	.set sysarch, _x64_
	.include "console.i"

	.text

Routine:
	mov	rcx, rax
	add	rcx, 1
	mul	rcx
	shr	rax, 1
	ret			#transfer execution control to the instruction whose address was passed with call instruction

	.entry main
main:
	GetInt	askl, lower
	GetInt	asku, upper

	mov	rax, lower
	cmp	rax, upper
	jg	done
	sub	rax, 1
	call	Routine		#control will be transferred to instruction labelled Routine along with 
	mov	rbx, rax		#address of this instruction
	mov	rax, upper
	call	Routine
	sub	rax, rbx
	mov	total, rax

	PutInt	tell, total

done:	PutMsg greet
	ret


askl:	.string	"Lower Limit: "
asku:	.string	"Upper Limit: "
tell:	.string	"Sum of Integers = "
greet:	.string	"Goodbye!\n"

	.data

lower:	.quad	0
upper:	.quad	0
total:	.quad	0

	.end

