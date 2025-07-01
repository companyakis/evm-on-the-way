//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

/*
Exercise 1: Create a contract named 'SimpleStorage' with a state variable 'num' of type uint256. 
Create a function 'set' that takes a uint256 parameter and assigns it to 'num'. 
Create a function 'get' that returns the current value of 'num'.
*/

contract SimpleStorage {

    uint256 public num;

    function set(uint256 _num) public {

        num = _num;
    }

    function get() public view returns (uint256) {

        return num;
    }
}
