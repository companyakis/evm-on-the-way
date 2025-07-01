//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

/*
Exercise 2: Create a contract named 'Counter' with a state variable 'count' of type uint256 initialized to 0. 
Create a function 'increment' that increases the value of 'count' by 1. 
Create a function 'decrement' that decreases the value of 'count' by 1. 
Create a function 'getCount' that returns the current value of 'count'.
*/

contract Counter {

    uint256 public count = 0;

    function increment() public {

        count++;
    }

    function decrement() public {

        count--;
    }

    function getCount() public view returns (uint256) {

        return count;
    }
}
