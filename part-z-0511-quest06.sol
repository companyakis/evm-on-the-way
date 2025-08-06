/*
Challenge: Complete the 'FunctionsExample' contract by doing the following: 
1. Declare a state variable of type 'uint' or 'uint256'. 
2. Create a function that updates the state variable using a parameter. 
3. Create a view function that returns the current value of the state variable.

*/


// Learn how to write and read from a state variable using functions
pragma solidity ^0.8.0;

contract FunctionsExample {

    uint public sales;

    function setSales(uint _s) public {

        sales = _s;
    }

    function getSales() public view returns (uint) {

        return sales;
    }
}
