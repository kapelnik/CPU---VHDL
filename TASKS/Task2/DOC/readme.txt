

TOP1-
generic n
this entity take a vector din and return it in a dilay of one clock
IN- rst,ena,clk, din. 
OUT- dinLast. 

TOP2-
generic n
this entity checks if cond+1+dinlast=din and return rise as 1/0
IN- din, dinlast, cond. 
OUT- rise, sum, carry.

TOP3-
generic n,m,k
this is a counter that counts until m+1. if the counter gets to m+1 it stucks.
wont work if ena is 0 and reset if rst is 1.
IN- rst,ena,clk, rise
OUT- count.

TOP4-
checks if count = m+1 and return the detector (0/1)
generic m.
IN- count.
OUT- detector.

TOP-
this entity checks synchronously if there is a series of ascending numbers by cond
and returns 1 when a series was found
IN- rst,ena, clk, din
OUT- detector