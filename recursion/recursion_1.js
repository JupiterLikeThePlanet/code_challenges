//Question
//In mathematics, the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n. For example, 5! = 5 x 4 x 3 x 2 x 1 = 120.   Write a JavaScript program to calculate the factorial of a number.

// Pseudocode
// - create a function('factorial') that takes a number (var number) as a parameter
// - create a function('factorialing') within function factorial that takes parameters of the summed number ('num' and '' respectively)
// - use an if conditional
//   - if statement returns num if equal to number.
//   - else if statement to stop factorialing if num > number
//   - else to return the value of of function factorialing


function factorial(number){
    if (number === 0){
      return 1
    }else{
      return number * factorial(number-1)
    }
}


console.log(factorial(5))