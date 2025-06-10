// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function sum_and_mult(uint x, uint y) external pure returns (uint, uint) {

        return (x + y, x * y);
    }

    function sum_and_mult(uint x, uint y, uint z) external pure returns (uint, uint) {

        return (x + y + z, x * y * z);
    }

}
