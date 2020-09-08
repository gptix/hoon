:: This generator implements use of a core with arms.

|=  [x=@ud y=@ud op=@tas]

|^  ^-  @ud

:: buc
?:  =(op %add)
  (adder x y)
?:  =(op %mul)
  (multer x y)
?:  =(op %div)
  (divver x y)
?:  =(op %sub)
  (subber x y)
123

++  adder
  |=  [a=@ud b=@ud]
  (add a b)
++  multer
  |=  [a=@ud b=@ud]
  (mul a b)
++  divver
  |=  [a=@ud b=@ud]
  (div a b)
++  subber
  |=  [a=@ud b=@ud]
  (sub a b)
--