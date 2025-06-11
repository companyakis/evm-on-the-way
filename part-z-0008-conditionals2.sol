// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function canVote(uint8 _age) public pure returns (bool) {

        return _age >= 18 ? true : false;
    }

}
