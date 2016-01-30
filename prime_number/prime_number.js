// Test the primeness of a number

// input: number
// output: boolean value

// - A number is prime when only divisible by 1 and itself
// - Enter a number that loops n being divided from n-1 until 2
// - use a conditional that uses a modulus that stops if at any point n%x = 0, console log that the number is a prime


var prime = function(number){
  primeness = true;
  floatTest = number.toString();

  //take care of your outliers
  if(number === 1 || number === 2){
    console.log(number+" is prime")
  }else if(number <= 0){
    console.log("Please enter a whole number greater than zero")
  }else if(floatTest.indexOf(".") > 0){
    console.log("Please enter a whole number greater than zero")
  }else{
    // evaluate the primeness
    for (var i=(number-1) ; i > 1 ; i-- ){
      if (number % i !== 0){
      // console.log("if hit "+i)
        continue
      }else if(number % i === 0){
        primeness = false;
      // console.log("else if hit "+i)
        break
    };
  };

  // tell the results of your algorithm
    if(primeness === false){
      console.log(number+" is not prime")
    }else{
      console.log(number+" is prime")
    };
  };
};


prime(9);
prime(11);
prime(3337);
prime(1)
prime(2)
prime(-4)
prime(0)
prime(0.1)
prime(12.1)