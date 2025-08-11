// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SomeMath {

    function sum(uint x, uint y, uint z) public pure returns (uint) {

        return  x + y + z;
    }
}

contract Greeting {

    string public greet;

    function setGreet(string memory _g) public {

        greet = _g;
    }

    function getGreet() public view returns (string memory) {

        return greet;
    }
}
