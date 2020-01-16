	.file	"simple.c"
	.text
	.globl	simple
	.type	simple, @function
simple:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.. rdi is the first arg
	movq	%rdi, -24(%rbp)
	.. esi is the second arg
	movl	%esi, -28(%rbp)
	.. move xp to rax
	movq	-24(%rbp), %rax
	.. move (*xp) to edx
	movl	(%rax), %edx
	.. move y to eax
	movl	-28(%rbp), %eax
	.. add edx to eax,  eax += edx, *xp + y
	addl	%edx, %eax
	.. 
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	.. sjb operation, *xp = t; t = edx, edx = -4(%rbp), -4(%rbp) = eax,
	movl	%edx, (%rax)
	.. eax as the return value
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	simple, .-simple
	.ident	"GCC: (Ubuntu 9.1.0-2ubuntu2~16.04) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
