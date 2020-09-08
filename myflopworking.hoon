:: Make a gate expecting a list of atoms.
|=  inlist=(list @)
:: Create an accumulator list.
=|  outlist=(list @)
::  Create a trap to which to recurse.
|-  
:: Cast the return type as a list of atoms.
^-  (list @)
:: Check to see if inlist is null.
?~  inlist
:: It is null, so return outlist.
  outlist
:: It is not null.
:: Recurse, shifting the head of inlist to the head of 
:: outlist, and setting inlist to the tail of inlist.
$(outlist [i.inlist outlist], inlist t.inlist)