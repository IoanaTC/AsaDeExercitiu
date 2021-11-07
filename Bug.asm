.data
x: .long 15
.text
.globl _start

_start:
	movl $0, %eax
	movl x, %eax
	movl %eax, %ebx
_exit:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
