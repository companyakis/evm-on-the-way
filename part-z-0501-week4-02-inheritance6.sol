/*
Your Goal: Collectible Transferable 
The Collectible contract now also inherits from Transferable, a contract which has not been created yet!

Your goal is to create a new contract Transferable that will allow the Collectible to transfer its ownership to another address.
In the Transferable contract, create a function called transfer which takes an address for the new owner.
Have this function transfer ownership from the current owner to the new owner passed in.
Ensure that this function can only be called by the current owner.


*/


// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Ownable {
    
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {

        require(msg.sender == owner, "");
        _;
    }
}


contract Transferable is Ownable {

    function transfer(address _newOwner) external onlyOwner {

        owner = _newOwner;
    }
}



// Collectible.sol file content
// // SPDX-License-Identifier: MIT
// pragma solidity 0.8.20;

// import "./BaseContracts.sol";

// contract Collectible is Ownable, Transferable {
// 	uint public price;

// 	function markPrice(uint _price) external onlyOwner {
// 		price = _price;
// 	}
// }
