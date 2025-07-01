//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mapping {

// Inside a function named 'set', set the value at a given address in 'myMap' to 100

    function set(address _a) public {

        myMap[_a] = 100;
    }
}
