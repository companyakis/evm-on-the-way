/*
⭐️ Assignment
Create a public state variable called b that is of type bool and initialize it to true.
Create a public function called get_b that returns the value of b.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SimpleStorage {

    bool public b = true;

    function get_b() public view returns (bool) {

        return b;
    }
}
