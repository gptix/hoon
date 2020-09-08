:: This generator uses a core with arms, and uses
:: what-het to select based on a case within a set.
:: It also implements a simple error handler (crash).

|=  [x=@ud y=@ud op=?(%add %mul %div %sub)]

|^  ^-  @ud

:: buc

?-  op
  %add  (adder x y)
  %mul  (multer x y)
  %div  (divver x y)
  %sub  ?:  (lth x y)  :: test for underflow
          ~|  'subtraction underflow'  !!
        (subber x y)
==

:: arms

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