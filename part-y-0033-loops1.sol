//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Loops {

// Declare a variable of type uint named 'sum' and initialize it with the value 0
// Use a 'for' loop to add numbers from 1 to 5 to 'sum'

    uint sum = 0;

    for (uint i = 1; i <= 5; i++) {

        sum += i;
    }
}
