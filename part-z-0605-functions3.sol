/*
⭐️ Assignment
Create a new function, increaseX in the contract. The function should take an input parameter of type uint and increase the value of the variable x by the value of the input parameter.
Make sure that x can only be increased.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract FunctionModifier {

    uint public x = 10;
  
    modifier onlyIcrease(uint _num) {

        require(_num > 0, "Input amount must be positive to increase x.");
        _;
    }

    function increaseX(uint _num) public onlyIcrease(_num) {

        x += _num;
    }
   
}
