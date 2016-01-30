//Question
//Write a function once that accepts a callback as input and returns a function. When the returned function is called the first time, it should call the callback and return that output. If it is called any additional times, instead of calling the callback again it will simply return the output value from the first time it was called.

//Pseudocode
//Input: A function that takes a function as parameter
//Output: The returned value when called the first time


var once = function(myFunction){
  var counter = 0
  function storedFunction(x){
    if(counter < 1){
      counter++
      myValue = myFunction(x)
      return myValue
    }else{
      return myValue
    }
  }
  return storedFunction
};


var increment = function(num) { return num + 1; };
var incrementOnce = once(increment);



console.log(incrementOnce(5));
console.log(incrementOnce(10));
console.log(incrementOnce(4));
console.log(incrementOnce(9001));