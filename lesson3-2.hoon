|=  a=*

:: check if it is an atom
?^  a
:: it is a cell
  ["cell" a]

:: it is not a cell
  ?:  =(0 (mod a 2))
    :: it is even
    ["even" a]

    :: it is odd
    ["odd" a]