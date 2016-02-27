// Problem
//Write a JavaScript program to check whether a number is even or not

// Pseudocode
// - create a function that takes a number ('number') as a parameter
// - if number is negative
//   - multiply by negative one and set equal to number
// - else if
//   - number is equal to zero return true
// - else if
//   - set number equal to number minus 2
//   - return our function



function even_number(number){
  if(number < 0){
    number = number * (-1)
  }else if (number === 0 ){
    return true
  }else if (number === 1){
    return false
  }else{
    number = number - 2
    return even_number(number);
  }
}

console.log(even_number(55))
console.log(even_number(56))