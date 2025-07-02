//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract DataLocation {

// Declare a state variable of type uint and name it 'storageVar'
// Declare a function named 'memoryFunction' that declares a memory variable of type uint and name it 'memoryVar'
// Declare an external function named 'calldataFunction' that takes a calldata uint argument named 'calldataVar'

    uint storageVar;

    function memoryFunction() public pure {

        uint memoryVar;
    }

    function calldataFunction(uint calldataVar) external pure {
        
    }
}
