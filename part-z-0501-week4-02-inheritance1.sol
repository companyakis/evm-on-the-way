/*
Your Goal: Make SuperHeroes
You'll notice that the SuperHeroes.sol file imports the Hero.sol read-only file. Your goal is to create two new contracts that inherit from the base Hero contract.

Create two new contracts Mage and Warrior which inherit both the function and the state variable from the Hero contract.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Hero.sol";

// TODO: create Mage/Warrior Heroes

contract Mage is Hero {

}

contract Warrior is Hero {

}



// hero.sol file content

// // SPDX-License-Identifier: MIT
// pragma solidity 0.8.20;

// contract Hero {
// 	uint public health = 100;

// 	function takeDamage(uint damage) public {
// 		health -= damage;
// 	}
// }
