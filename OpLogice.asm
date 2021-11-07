.data
	x: .long 8
	y: .long 11
	si: .space 4
	sau: .space 4
	xsau: .space 4
	t: .space 4
	not: .space 4
.text
.globl _start
_start:
_si:
	movl x, %eax
	and y, %eax
	movl %eax, si
_test:
	movl x, %eax
	test y, %eax
	movl %eax, t
_sau:
	movl x, %eax
	or y, %eax
	movl %eax, sau
_xsau:
	movl x, %eax
	xor y, %eax
	movl %eax, xsau
_not:
	movl x, %eax
	not %eax
	movl %eax, not

_exit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
