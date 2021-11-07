.data
	x: .long -20
	ods: .space 4
	od: .space 4
	ids: .space 4
	id: .space 4
.text
.globl _start
_start:
_shiftleft_h:
	movl x, %eax
	shl $2, %eax
	movl %eax, od
	
_shiftleft_a:
	movl x, %eax
	sal $2, %eax
	movl %eax, ods
	
_shiftright_h:
	movl x, %eax
	shr $2, %eax
	movl %eax, id
	
_shiftright_a:
	movl x, %eax
	sar $2, %eax
	movl %eax, ids
	
_exit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
