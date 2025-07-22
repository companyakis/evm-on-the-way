/*
 Your Goal: User Mapping Tokens
Let's create a new token where every new user will receive 100 tokens!

Create a public mapping called users that will map an address to a User struct.
Create an external function called createUser. This function should create a new user and associate it to the msg.sender address in the users mapping.
The balance of the new user should be set to 100 and the isActive boolean should be set to true.
 Contract Security
Ensure that the createUser function is called with an address that is not associated with an active user. Otherwise, revert the call.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external {

		require(users[msg.sender].isActive == false, "");

		users[msg.sender] = User(100, true);
	}

}
