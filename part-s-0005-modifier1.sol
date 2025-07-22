// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    address public teller;

    string public tellerProverb;

    constructor() {

        teller = msg.sender;
    }

    modifier onlyTeller() {

        require(teller == msg.sender, "Only contract caller can tell a proverb!");

        _;
    }

    function tellAProverb(string memory _proverb) public onlyTeller {

        tellerProverb = _proverb;
    }
}
