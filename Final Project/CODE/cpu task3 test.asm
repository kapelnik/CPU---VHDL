.data 
	array: .word 3,4,5,6,1,2,12,45,2,1,4,12,55,13,14,15
	#B: .word 64
.text
	addi $t1, $zero,4
	add $t2, $t1, $t1
	
	add  $t3, $zero, -4
	addi  $t4, $zero, -4
	
	ori $t1, $zero,0xAA
	or  $t2, $zero,0xAA
	
	XOR $t3, $t1,$t2
	XORi  $t2, $t1,0xAA 
	
	sll $t4,$t1, 1
	srl $t5,$t1, 1
	XOR $t3, $t4,$t1

	beq $t3, $t3, check1

loop:	j loop
	
check1:	bne $t4, $zero, check2

check2: sub  $t1, $t1, $t1
	sub  $t2, $zero, $t2
	lw   $t6,0x818
	sw   $t7,0x800
