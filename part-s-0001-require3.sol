// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MustafaBank {

    mapping(address => uint) balance;

    function depositMoney() public payable {

        balance[msg.sender] += msg.value;
    }

    function withdrawMoney(uint amount) public {

        require(amount > 0, "Amount can't be zero");

        require(balance[msg.sender] >= amount, "Insufficient balance for withdrawal");

        balance[msg.sender] -= amount;

        (bool success, ) = payable(msg.sender).call{value: amount}("");

        require(success, "Failed to send Ether");
    }

}
