/*
Your Goal: Only Owner
On the Collectible.sol tab you'll see that Collectible contract inherits from the Ownable contract.

Your goal is to fill out the Ownable base contract, which will be used by the Collectible contract!
The owner should be defined in the Ownable base contract
Ensure that markPrice can only be called by the owner (the deployer of the collectible)

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




// Collectible.sol file content
// // SPDX-License-Identifier: MIT
// pragma solidity 0.8.20;

// import "./BaseContracts.sol";

// contract Collectible is Ownable {
// 	uint public price;

// 	function markPrice(uint _price) external onlyOwner {
// 		price = _price;
// 	}
// }
