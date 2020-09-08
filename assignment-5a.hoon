|=  input=@ud

`@ud`input
:: buc

:: :-  (your-arm-one input)
:: (your-arm-two input)

:: arms

:: ++  your-arm-one
:: |=  inpt=@ud
::   =.  inpt (mul 10 (add inpt 7))
:: ?:  =(mod inpt 3)
::   "fizzy"
:: "meh"  

:: ++  your-arm-two
:: |=  inpt=@ud
::   =.  inpt (mul 11 (add inpt 8))
:: ?:  =(mod inpt 5)
::   "buzzdo"
:: "meh"
--