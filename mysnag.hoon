:: Create a gate that expects an integer and a list.
|=  [which=@ud inlist=(list *)]

:: Set a trap.
|-  

:: Cast return value as a noun.
^-  *

:: Check to see if the inlist is null.
?~  inlist
  ~  :: It is, so return null.

:: If the current value of which is zero, return the head of inlist.
?:  =(0 which)
  i.inlist

:: Otherwise decrement which, take the tail of inlist, and recurse.
$(which (dec which), inlist t.inlist)