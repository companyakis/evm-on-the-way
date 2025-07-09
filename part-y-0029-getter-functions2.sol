//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract GetterFunctions {

uint public stateVar = 10;

// Define a view function named 'viewFunc' that returns the value of 'stateVar'

    function viewFunc() public view returns (uint) {

        return stateVar;
    }
}
