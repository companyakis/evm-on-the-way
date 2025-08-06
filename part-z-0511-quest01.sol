/*
Complete the 'HelloWorld' contract by following these steps:

Declare a state variable of type string named greeting.
Implement a constructor that sets greeting to "Hello, World!".

*/


pragma solidity ^0.8.0;

contract HelloWorld {

  string public greeting;

  constructor() {
    greeting = "Hello, World!";
  }
}
