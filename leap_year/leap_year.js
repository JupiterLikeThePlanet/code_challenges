// Problem: Check whether a given year is a leap year or not.

// Input: A year
// Output: A boolean value of whether the year is a leap year or not

// Pseudocode
// Create a function that takes a year as a parameter
// Make an conditional statement:
// --> 1st check use an 'or' statement to see if year is not divisible by four or evenly divided by 100 and return that it is not a leap year
// --> 2nd make an else if statement using another 'or' operator that checks if year is evenly divisible four using modulus or if the year is evenly divided by 400

// Long Way #1
// var leapYear = function(year) {
//   var leap = false;
//   if(year % 400 === 0){
//     //console.log("Yes, this is a leap year!");
//     leap = true;
//     //return leap
//   }else if(year % 100 === 0){
//     leap = false
//   }else if(year % 4 === 0){
//     leap = true
//   }else if(year % 4 !== 0 ){
//     leap = false
//   };
//   if(leap === true){
//     console.log("LEAP YEAR")
//     return leap
//   }else{
//     console.log("not leap year")
//     return leap
//   };
// };

// Long way #2
// var leapYear = function(year) {
//   var leap = false;
//   if(year % 4 === 0){
//     if(year % 100 !== 0){
//       console.log("Yes, this is a leap year!");
//       leap = true;
//       return leap
//     }else if(year % 100 === 0){
//       if(year % 400 === 0){
//         console.log("Yes, this is a leap year!");
//         leap = true;
//         return leap
//       }else{
//         console.log("No, this is not a leap year")
//         return leap
//       };
//     }
//   }else if(year % 4 !== 0){
//     console.log("No, this is not a leap year")
//     return leap
//   };
// };

// Refactored shorter solution
var leapYear = function(year) {
  var leap = false;
  if( ((year % 4 === 0) && (year % 100 != 0)) || (year % 400 === 0)){
    console.log("Yes, this is a leap year!");
    leap = true;
    return leap
  }else if(year % 4 !== 0 || year % 100 === 0){
    console.log("No, this is not a leap year")
    return leap
  };
};


console.log(leapYear(1999))
console.log(leapYear(2000))
console.log(leapYear(1900))
//console.log(leapYear(1200))
//console.log(leapYear(1493))
//console.log(leapYear(1776))