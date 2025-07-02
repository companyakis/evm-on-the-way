//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Loops {

// Declare a variable of type uint named 'sum' and initialize it with the value 0
// Use a 'for' loop to add numbers from 1 to 10 to 'sum'
// Create a function 'getSum' that returns the 'sum' variable

    uint sum = 0;

    for (uint i = 1; i <= 10; i++) {

        sum += i;
    }

    function getSum() public view returns (uint) {

        return sum;
    }
}
