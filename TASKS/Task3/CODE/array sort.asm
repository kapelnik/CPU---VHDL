.data 
	array: .word 16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1
	B: .word 0x7A1200
	C: .word 64
.text
				la $t8,B		# set s1 also to be the address of the array for display on the screen
				lw $t9,0($t8)
				la $t8,C		# set s1 also to be the address of the array for display on the screen
				lw $s3,0($t8)
				move $s0,$zero#la   $s0,array          # set s0 to base address of array , also to be the address of the array for display on the screen
				move $t0,$zero              # set t0 = 0 (i =0) index of array

#loop- Sorting loop using good old bubble sort				
loop:  				beq  $t0,$s3,finish        # if i = 16 then stop
				beq  $t0,$0,INC 
				add  $t7,$s0,$t0        # t7 points to the address reltive to the index
				lw   $t1,0($t7)
				lw   $t2,-4($t7)
				
				addi $t1, $t1,1
				slt $t5, $t2,$t1
				
				beq  $t5, $zero, swap         # if array[i]<array[i-1] then swap 
			
#INC - moving to the next cell in the array	 
INC:    			addi $t0,$t0,4
				j    loop	
				
#Swap - Swaps two cells in the array at array[$t7] <-> array[$t7-4]	 
swap: 				addi $t1, $t1, -1	#to return $t2 to its original value( because of line 16 slt command)
				sw   $t2,0($t7)
				sw   $t1,-4($t7)
				sub  $t0,$t0,4         # i = i -1 
				j    loop
		

#finish- after the array is sorted, display on green leds at mem(800)	
finish:   			la $s2,array		# set s1 also to be the address of the array for display on the screen
				lw $t0,0($s2)
				sw $t0,0x800
				 j one_sec_timer

#show- place the next cell in the array on leds until the end and repeat
show:			beq  $s2,$s3,finish        # if t1 = 64 then startover
			addi  $s2,$s2,4          # going to the next number in the array
			lw $t0,0($s2)
			sw $t0,0x800	
 	
 #one_sec_timer- 24M/3 commands  for 1 sec in 24mhz clock  ($t9 =  0x7A1200)
one_sec_timer:		move $t6,$zero	
			move $t3,$zero					
loopt6:			beq $t6,$t9,show 
			addi $t6,$t6,1
			j loopt6

			
		