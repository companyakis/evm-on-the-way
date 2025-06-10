// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint public money = 12;

    function moneyInc() external {

        money += 10;
    }

    function moneyDec() external {

        require(money > 0, "Money amount can't be negative!");
        money -= 5;
    }

    function getMoney() external view returns (uint) {

        return money;
    }

}
