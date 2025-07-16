/*
⭐️ Assignment
Create a new function in the Child contract called testInternalVar that returns the values of all state variables from the Base contract that are possible to return.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Base {

    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";

}

contract Child is Base {

    function testInternalVar() public view returns (string memory, string memory) {

        return (internalVar, publicVar);
    }
}


/*

private
Can be called from inside the contract

internal
Can be called from inside the contract
Can be called from a child contract

public
Can be called from inside the contract
Can be called from a child contract
Can be called from other contracts or transactions

external
Can be called from other contracts or transactions
State variables can not be external

*/
