/*
Challenge: Complete the 'IfElseExample' contract by doing the following: 
1. Create a function named 'checkValue(uint x)' that returns: - 0 if x < 100 - 1 if x < 200 - 2 otherwise 
2. Create another function named 'ternaryCheck(uint y)' that uses the ternary operator: - return 11 if y < 50 - return 22 otherwise

*/

pragma solidity ^0.8.0;

contract IfElseExample {

    function checkValue(uint x) public pure returns (uint) {

        if (x < 100) {
            return 0;
        } else if (x < 200) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternaryCheck(uint y) public pure returns (uint) {

        return y < 50 ? 11 : 22;
    }
}
