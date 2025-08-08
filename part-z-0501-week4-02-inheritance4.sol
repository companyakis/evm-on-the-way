/*
Your Goal: Add the Super!
The attack function is now implemented by the Hero base contract. It will take the enemy as an argument and decrement energy from our hero after every attack.

Let's invoke this base contract function from within the attack function for both (derived) hero contracts: Mage and Warrior.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Hero.sol";

// TODO: create Mage/Warrior Heroes

contract Mage is Hero(50) {

    function attack(Enemy _e) override public {
        _e.takeAttack(Hero.AttackTypes.Spell);
        super.attack(_e);
    }
}

contract Warrior is Hero(200) {
    
    function attack(Enemy _e) override public {
        _e.takeAttack(Hero.AttackTypes.Brawl);
        super.attack(_e);
    }
}


