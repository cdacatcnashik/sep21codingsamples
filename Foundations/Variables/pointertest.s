	.file	"pointertest.c"
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
	.globl	month
	.bss
	.align 4
	.type	month, @object
	.size	month, 4
month:
	.zero	4
	.globl	year
	.data
	.align 32
	.type	year, @object
	.size	year, 96
year:
	.quad	31
	.quad	28
	.quad	31
	.quad	30
	.quad	31
	.quad	30
	.quad	31
	.quad	31
	.quad	30
	.quad	31
	.quad	30
	.quad	31
	.section	.rodata
.LC0:
	.string	"Month[1-12]: "
.LC1:
	.string	"Index of Month = "
.LC2:
	.string	"Number of Days = "
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
	movq	$month, -8(%rbp)
	movl	$.LC0, %edi
	call	GetInt
	movl	%eax, month(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %esi
	movl	$.LC1, %edi
	call	_x64_writestr
	movl	month(%rip), %eax
	cltq
	movq	%rax, %rdi
	call	_x64_writeint
	movl	$10, %edi
	call	_x64_writechr
	movl	$0, %esi
	movl	$.LC2, %edi
	call	_x64_writestr
	movl	month(%rip), %eax
	cltq
	movq	year(,%rax,8), %rax
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
