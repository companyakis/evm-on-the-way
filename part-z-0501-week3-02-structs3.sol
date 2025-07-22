/*
Your Goal: Vote Array
Create a public storage array of the Vote struct called votes.
In the createVote function use the choice parameter and the msg.sender to create a new vote and push it onto the array of votes.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }
	
	struct Vote {
		Choices choice;
		address voter;
	}
	
	// TODO: create a public state variable: an array of votes

	Vote[] public votes;

	function createVote(Choices choice) external {
		// TODO: add a new vote to the array of votes state variable

		votes.push(Vote(choice, msg.sender));
	}
}
