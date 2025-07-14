// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function checkFounder(string memory _person) external pure returns (string memory) {

        assert(keccak256(abi.encodePacked(_person)) == keccak256(abi.encodePacked("Mustafa Buyukdereli")));

        return "We love Mustafa Buyukdereli:))))";
    }

}
