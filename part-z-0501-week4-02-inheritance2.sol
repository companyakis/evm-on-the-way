/*
Your Goal: Specific Health 
You'll notice that the Hero.sol file has changed on this stage! Now it has a constructor which takes a health argument.

Let's modify our SuperHeroes so that Warrior has an initial health of 200 while the Mage has an initial health of 50.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Hero.sol";

// TODO: create Mage/Warrior Heroes

contract Mage is Hero(50) {

}

contract Warrior is Hero(200) {

}

// Hero.sol content
// SPDX-License-Identifier: MIT
// pragma solidity 0.8.20;

// contract Hero {
// 	uint public health;
// 	constructor(uint _health) {
// 		health = _health;
// 	}

// 	function takeDamage(uint damage) public {
// 		health -= damage;
// 	}
// }
