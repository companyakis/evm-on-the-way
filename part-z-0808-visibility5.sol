//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Visibility {

// Declare a public function named 'testFuncs' that calls 'publicFunc' and 'externalFunc' and returns their results

    function testFuncs() public view returns (string memory, string memory) {

        return (publicFunc(), this.externalFunc());
    }
}
