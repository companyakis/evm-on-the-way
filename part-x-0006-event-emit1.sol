// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    string public congrats;

    uint256 public totalSales;

    event salesCongrats(address indexed caller, string congrats, uint256 totalSales);

    function setCongratsMessage(string memory _msg, uint256 _sales) public {

        require(_sales > 250_000, "Sales amount must exceed $ 250.000!");

        congrats = _msg;

        totalSales = _sales;

        emit salesCongrats(msg.sender, _msg, _sales);
    }

}
