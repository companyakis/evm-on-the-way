// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    bytes32 public myProverbHash;

    constructor(string memory _proverb) {
        
        myProverbHash = keccak256(abi.encodePacked(_proverb));
    }

    function sameProverbs(string memory _userProverb) external view returns (bool) {

        return (myProverbHash == keccak256(abi.encodePacked(_userProverb)));
    }

}
