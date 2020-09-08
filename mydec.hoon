:: Make a gate that expects an unsigned integer
|=  input=@ud

:: Set a trap, and cast its output as an unsigned integer.
|-  ^-  @ud

:: Modify the subject by adding a face for a counter.
=/  output=@ud  0 

:: Test to see if the counter is one less than the input.
?:  =((add 1 output) input)

:: If it is, return output.
  output

:: It is not, so recurse.
:: This next line is a dummy to make sure that the check is working correctly.
:: It is.
100

:: For some reason, if I remove the dummy line and uncomment the line below, I get
:: an error.

:: $(output (add 1 output))

::  The error I get:

:: /gen/mydec/hoon::[1 1].[15 25]>
:: /gen/mydec/hoon::[2 1].[15 25]>
:: /gen/mydec/hoon::[2 5].[15 25]>
:: /gen/mydec/hoon::[3 1].[15 25]>
:: /gen/mydec/hoon::[4 1].[15 25]>
:: /gen/mydec/hoon::[15 1].[15 25]>
:: nest-fail
:: road: new
:: [%error-building /gen/mydec/hoon]
:: > +mydec 4
:: /gen/mydec/hoon
:: %generator-build-fail

:: The structure of the recursive call looks correct.  
:: The nest-fail seems to be some kind of type error.
