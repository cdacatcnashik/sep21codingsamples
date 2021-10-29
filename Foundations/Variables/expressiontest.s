	.file	"expressiontest.c"
	.text
	.globl	_start
	.type	_start, @function
_start:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$main, %edi
	call	_x64_start
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_start, .-_start
	.globl	GetInt
	.type	GetInt, @function
GetInt:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_x64_writestr
	call	_x64_readint
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	GetInt, .-GetInt
	.globl	upper
	.bss
	.align 8
	.type	upper, @object
	.size	upper, 8
upper:
	.zero	8
	.section	.rodata
.LC0:
	.string	"Upper Limit: "
.LC1:
	.string	"Sum of Integers = "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$.LC0, %edi
	call	GetInt
	movq	%rax, upper(%rip)
	movq	upper(%rip), %rax
	leaq	1(%rax), %rdx
	movq	upper(%rip), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	movl	$0, %esi
	movl	$.LC1, %edi
	call	_x64_writestr
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_x64_writeint
	movl	$10, %edi
	call	_x64_writechr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
