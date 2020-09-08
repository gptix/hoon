:: This generator simply tests use of conditionals.
:: It does not use a core.
|=  [x=@ud y=@ud op=@tas]

?:  =(op %add)
  (add x y)
?:  =(op %mul)
  (mul x y)
?:  =(op %sub)
  (sub x y)
?:  =(op %div)
  (div x y)
0