/*
Your Goal: Self Destruct
When the donate function is called, trigger a selfdestruct in the contract!

The selfdestruct will send all remaining funds to the address passed in, so it might be a good candidate to replace the existing functionality in your donate function by sending the funds to the charity! 
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    address public charity;

    constructor(address _c) {

        owner = msg.sender;

        charity = _c;
    }

    receive() external payable {
        
    }

    function tip() public payable {

        (bool s, ) = owner.call{ value: msg.value}("");
        
        require(s);
    }


    function donate() public payable {

        selfdestruct(payable(charity));

        // (bool s, ) = charity.call{ value: address(this).balance}("");

        // require(s);
    }
    
}
