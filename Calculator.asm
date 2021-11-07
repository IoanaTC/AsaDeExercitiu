.data
	x: .long 23
	y: .long 7
	sum: .space 4
	dif: .space 4
	prod: .long 4
	cat: .long 4
	rest: .long 4
.text
.globl _start

_start:
	#adunare
	movl x, %eax
	add y, %eax
	movl %eax, sum
	
	#scadere
	movl x, %eax
	sub y, %eax
	movl %eax, dif
	
	#inmultire
	movl x, %eax
	movl y, %ebx
	imull %ebx
	movl %eax, prod
	
	#impartire
	movl $0, %edx
	movl x, %eax
	movl y, %ebx
	idiv %ebx
	
	movl %eax, cat
	movl %ebx, rest
_exit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
	
	
	
