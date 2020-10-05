/+  lazytrig  :: From ~lagrev-nocfep, https://github.com/sigilante/lazytrig
|%
++  e-to-the
  |=  x=@rs  ^-  @rs
  (pow:lazytrig e:lazytrig x)

++  neg
  |=  x=@rs
  (mul:rs .-1 x)

++  sigmoid
  :: 1 / (1 + e^-z)
  :: z large neg, approaches 0
  :: z == 0, 0.5
  :: z large pos, approaches 1
  |=  z=@rs  ^-  @rs
  (div:rs .1 (add:rs .1 (e-to-the (neg z))))
--