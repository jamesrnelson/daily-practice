// Before you start writing the code to solve each of these problems, write out (in your notebook or comments):
//
// What clarifying questions would you ask an interviewer?
// What answers are you pretending they gave?
// Greatest Common Denominator
// Using recursion, find the greatest common denominator of two positive integers.
//
// For example,
//
// greatestCommonDenominator(9, 12) #=> 3

// Based on the spec provided, it looks like the two positive integers are expected to be passed to the function as separate parameters, and the output is expected to be the GCD as an integer. Is this what you expect?
//

// Assumes Yes!

const gcd = (num1, num2) => {
  let commonDenominators = []
  if (num1 >= num2) {
    var largerNum = num1;
  } else {
    var largerNum = num2;
  }

  for (i = 1; i < largerNum; i++) {
    if (num1 % i === 0 && num2 % i === 0) {
      commonDenominators.push(i);
    }
  }

  return commonDenominators[(commonDenominators.length - 1)];
}

//I realized after I wrote this that I didn't use recursion. I'm going to move on and come back to it if I have time!

// Reverse Integers
// Write a function that can take any non-negative integer as a argument and return it in the opposite order.
//
// Assume your interviewer tells you that using any built-in Ruby methods that makes this insanely easy is not cool.
//
// Examples:
//
// Input: 13 Output: 31
//
// Input: 1445 Output: 5441
//
// Input: 145263 Output: 362541

const reverser = (input) => {
  let strungOutInput = input.toString();
  let numbers = strungOutInput.split("");
  let reversedNumbers = []

  while (numbers.length > 0) {
    let newNum = numbers.pop();
    reversedNumbers.push(newNum);
  }

  let reStrungNums = reversedNumbers.toString();
  let commasRemoved = reStrungNums.replace(/,/g, '');
  return parseInt(commasRemoved);
}

// Bracket Matcher
// Ever wonder how your linter knows if you have matching brackets? Well it's time to think of a solution to that!
//
// Given a set of brackets, [, {, (, create a function that determines if the brackets are well-formed (match) or not - even with bracket nesting. For example:
//
// bracket('{}');
//
// // => true
// bracket('{(');
//
// // => false
// bracket('{()}');
//
// // => true
// bracket('{[)][]}');
//
// // => false
// bracket(']');
//
// // => false
// bracket('({[]}{[]})');
//
// // => true



// if there isn't one, return false
// if there is one and the closing is right next to it, delete both items
//  return to beginning
// if there is one and the closing is not right next to it, select the next item
//  check for pair

const bracket = (input) => {
  let chars = input.split("");

  if (input.length > 0) {
    let openBracket = input[0];
    let match = findMatch(openBracket, input);
  }
}

const findMatch = (firstBracket, possibleMatches) => {
  if (firstBracket == '{') || firstBracket == '[' || firstBracket == '(') {

  } elseif {

  }
}
