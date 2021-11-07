.data
.text
.globl _start
_start:
	movl $0, %eax
	mov $1, %ah

_exit:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
