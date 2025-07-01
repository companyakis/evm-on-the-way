//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

/*
Exercise 4: Create a contract named 'MappingStorage' with a state variable 'map' of type mapping where keys and values are both of type uint256. 
Create a function 'setElement' that takes two uint256 parameters representing a key and a value and sets the value at the key in 'map'. 
Create a function 'getElement' that takes a uint256 parameter representing a key and returns the value at that key in 'map'.
*/

contract MappingStorage {

    mapping(uint256 => uint256) public map;

    function setElement(uint256 _element, uint256 _value) public {

        map[_element] = _value;
    }

    function getElement(uint256 _element) public view returns (uint256) {

        return map[_element];
    }
}
