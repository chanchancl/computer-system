	.file	"simple.c"
	.text
	.p2align 4
	.globl	simple
	.type	simple, @function
simple:
.LFB0:
	.cfi_startproc
	movl	(%rdi), %eax
	addl	%esi, %eax
	movl	%eax, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	simple, .-simple
	.ident	"GCC: (Ubuntu 9.1.0-2ubuntu2~16.04) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
