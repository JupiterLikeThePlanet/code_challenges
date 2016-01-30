##indexOf() and toString()
  ex.
    > number = .1
      0.1
    > floatTest = number.toString()
      '0.1'
    > floatTest.indexOf('.');
      1
      **************************
    > number = 13
      13
    > floatTest = number.toString()
      '13'
    > floatTest.indexOf('.');
      -1


##Ternary Operator
(http://stackoverflow.com/questions/1771786/question-mark-in-javascript)

  hsb.s = max != 0 ? 255 * delta / max : 0;

  It has the form of: condition ? value-if-true : value-if-false
  Think of the ? as "then" and : as "else".

  Your code is equivalent to

  if (max != 0)
    hsb.s = 255 * delta / max;
  else
    hsb.s = 0;