//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mapping {

// Inside a function named 'set', set the value at a given address in 'myMap' to 100

    mapping(address => uin256) public myMap;

    function set(address _addr) public {

        myMap[_addr] = 100;
    } 
}
