using DualNumbers
using Test

x = Dual(1, 2)
y = Dual(1, 3)

z= x + y
@test z == Dual(2,5)

