//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

/*
Exercise 5: Create a contract named 'ComplexStorage' with a state variable 'data' of type mapping where keys are of type address and values are of type uint256 array. 
Create a function 'addElement' that takes a uint256 parameter and adds it to the end of the array at the caller's address in 'data'. 
Create a function 'getElement' that takes a uint256 parameter representing an index and returns the element at that index in the array at the caller's address in 'data'.
*/

contract ComplexStorage {

    mapping(address => uint256[]) public data;

    function addElement(uint256 _element) public {

        data[msg.sender].push(_element);
    }

    function getElement(uint256 _index) public view returns (uint256) {

        return data[msg.sender][_index];
    }
}
