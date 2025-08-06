/*
Challenge: Complete the 'VariablesExample' contract by doing the following: 
1. Declare a state variable of type 'uint' or 'uint256' (e.g., myStateNumber) and initialize it in the constructor. 
2. Demonstrate the usage of a global variable (e.g. block.timestamp) in a new view function that returns its value. 
3. Declare a local variable inside the function 'showLocalVariable' and return it.
*/

pragma solidity ^0.8.0;

contract VariablesExample {

    uint public myStateNumber;

    function timer() public view returns (uint) {
        uint totalTime = block.timestamp;
        return totalTime;
    }
    constructor() {
        myStateNumber = 100;
    }

    function showLocalVariable() public pure returns (uint) {

        uint localYear = 2025;
        return localYear;

    }
}
