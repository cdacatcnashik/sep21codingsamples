	.set sysarch, _x64_
	.include "console.i"

	.text

	.entry main
main:
	GetInt	askl, lower
	GetInt	asku, upper

	mov	rax, lower
	cmp	rax, upper
	jg	done		#in previous cmp instruction if left operand is greater than right operand jump to instruction with label done
	sub	rax, 1
	mov	rcx, rax
	add	rcx, 1
	mul	rcx
	shr	rax, 1
	mov	rbx, rax
	mov	rax, upper
	mov	rcx, rax
	add	rcx, 1
	mul	rcx
	shr	rax, 1
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

