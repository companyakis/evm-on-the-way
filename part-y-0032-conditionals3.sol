//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract ConditionalStatements {

// Declare a variable of type uint named 'number' and initialize it with the value 10
// Use an 'if' statement to check if 'number' is greater than 5 and if true, declare a variable 'result' and set it to true
// Add an 'else' statement that sets 'result' to false if 'number' is not greater than 5

    uint number = 10; 

    bool result;

    if (number > 5) {

        result = true;

    } else {

        result = false;
    }
}
