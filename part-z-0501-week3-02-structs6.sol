/*
Your Goal: Change Vote
Create an external function called changeVote which takes a Choices argument and changes the choice on the existing vote for the msg.sender.
If they do not have an existing vote, revert the call. 

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }
	
	struct Vote {
		Choices choice;
		address voter;
	}
	
	Vote[] public votes;

	// new function

	function changeVote(Choices _newChoice) external {

		require(hasVoted(msg.sender), "");


		for (uint i = 0; i < votes.length; i++) {

			if (votes[i].voter == msg.sender) {

				votes[i].choice = _newChoice;
			}
		}
	}

	function createVote(Choices choice) external {

		require(!hasVoted(msg.sender), "");

		votes.push(Vote(choice, msg.sender));
	}

	function hasVoted(address _a) public view returns(bool) {

		for (uint i = 0; i < votes.length; i++) {

			if (votes[i].voter == _a) {

				return true;
			}
		}

		return false;
	}

	function findChoice(address _a) public view returns (Choices) {

		for (uint i = 0; i < votes.length; i++) {

			if (votes[i].voter == _a) {

				return votes[i].choice;
			}
		}
	}
}
