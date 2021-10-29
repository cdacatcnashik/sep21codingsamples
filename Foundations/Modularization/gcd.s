	.intel_syntax noprefix

	.text

	.global	GCD		#publishing GCD 
	.type	GCD, @function	#GCD follows C callable function
	
GCD:	
1:	cmp	rdi, rsi
	je	3f
	jg	2f
	sub	rsi, rdi
	jmp	1b
2:	sub	rdi, rsi
	jmp	1b
3:	mov	rax, rsi
	ret

	.end

