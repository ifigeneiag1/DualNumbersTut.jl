using DualNumbers
using Test

x = Dual(1, 2)
y = Dual(1, 3)

@test +x == x
@test -x == Dual(-1,-2)

@test x+y == Dual(2,5)
@test x + - y == Dual(0,-1)
@test 4*x == Dual(4,8) 
@test y*8 == Dual(8,24) 

