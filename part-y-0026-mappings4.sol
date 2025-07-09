//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mapping {

// Inside a function named 'remove', reset the value at a given address in 'myMap' to its default value

    function remove(address _addr) public {

        delete myMap[_addr];
    }
}
