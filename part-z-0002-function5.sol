// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function isGood(uint16 ethPrice) public pure returns (string memory) {

        if (ethPrice > 3500) {

            return "Don't buy! Wait";
        }

        else {

            return "You can buy if you have money...";
        }

    }

    
}
