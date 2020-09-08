|=  a=@ud

|^  ^-  [tape tape]

:-  (fizzy a)
  (buzzy a)

++  fizzy
|=  x=@ud
?:  =(0 (mod (add 1 (mul 10 x)) 3))
  "fizzy"
"meh"

++  buzzy
|=  x=@ud
?:  =(0 (mod (add 1 (mul 10 x)) 3))
  "buzzy"
"bleh"
--
