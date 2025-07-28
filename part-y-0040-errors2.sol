//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Errors {

// Declare a function named 'checkFunds' that uses the 'revert' statement with the 'InsufficientFunds' error
// at least, 100 eth needed

    error InsufficientFunds(string needed); 

    function checkFunds(uint amount) public {

        if (amount < 100) {

            revert InsufficientFunds('100 ether needed');
        }
    }
}
