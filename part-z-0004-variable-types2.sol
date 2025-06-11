// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    // local variables

    function returnMyName() public pure returns (string memory) {

        string memory name = "Mustafa Buyukdereli";

        return name;
    }


    function squaredSum(int a, int b, int c) public pure returns (int) {

        int result = a * a + b * b + c * c;

        return result;
    }

}
