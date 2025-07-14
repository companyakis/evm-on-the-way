// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MathOperations {

    function salesTotal(uint256 month1, uint256 month2, uint256 month3, uint256 month4, uint256 month5, uint256 month6) public pure returns (uint256) {

        return month1 + month2 + month3 + month4 + month5 + month6;
    }

    function salesTotal(uint256 quarter1, uint256 quarter2, uint256 quarter3, uint256 quarter4) public pure returns (uint256) {

        return quarter1 + quarter2 + quarter3 + quarter4;
    }
}
