/*
Complete the 'DataTypesExample' contract by following these steps:

Declare state variables of types uint,int,bool, andaddress.
Implement a constructor that initializes these variables with sample values.

*/


// Explore primitive data types in Solidity
pragma solidity ^0.8.0;

contract DataTypesExample {
    // Declare variables of various primitive types
    uint public quantity;
    int public diff;
    bool public completed;
    address public zeros;

    constructor() {

        quantity = 100;
        diff = -12;
        completed = false;
        zeros = address(0);
    }
}
