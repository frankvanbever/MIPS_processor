
# Initialization

addi	$t0,$zero,0		# store 0 in $t1
addi	$t1,$zero,1		# store 1 in $t2

start_loop:
add	$t2,$t0,$t1		# add the two previous numbers together
add	$t0,$zero,$t1		# store previous value in lower register
add	$t1,$zero,$t2		# store new value in register
beq	$zero,$zero,start_loop	# next iteration
