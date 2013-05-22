addi $8, $0,5
addi $9, $0,1
add $11,$0,$8
loop:
sub $8,$8,$9
mul $11,$11,$8
bne $9,$8,loop