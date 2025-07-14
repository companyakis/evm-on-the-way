// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Calculations {

    function sum(uint x, uint y, uint z) public pure returns (uint) {

        return x + y + z;
    }

    function multiply(uint x, uint y, uint z) public pure returns (uint) {

        return x * y * z;
    }
}


contract Mustafa is Calculations {


}

