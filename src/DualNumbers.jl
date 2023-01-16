module DualNumbers

export Dual

"""
     Dual: A dual number 
"""
struct Dual{T}
   real::T
   dual::T
end

# identity and negation
Base.:+(x::Dual) = Dual(+x.real, +x.dual)
Base.:-(x::Dual) = Dual(-x.real,-x.dual)
Base.:+(x::Dual, y::Dual) = Dual(x.real + y.real, x.dual + y.dual)

#addition and subtraction operators
#Base.:-(x::Dual, y::Dual) = Dual(x.real - y.real, x.dual - y.dual)
Base.:+(x::Dual, y::Dual) = Dual(x.real + y.real, x.dual + y.dual)
Base.:-(x::Dual) = x + -y

# scalar multiplication
Base.:*(a::Number, x::Dual) = Dual(a * x.real, a* x.dual)
Base.:*(x:: Dual, a:: Number) = Dual(x.real* a, x.dual* a)

end # module DualNumbers

