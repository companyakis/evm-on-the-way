/*
 Your Goal: Vote Once
Each address should only be allowed to call createVote once.
If they try again, the call should be reverted. 

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

	function findChoice(address _a) external view returns (Choices) {

		for (uint i = 0; i < votes.length; i++) {

			if (votes[i].voter == _a) {

				return votes[i].choice;
			}
		}
	}
}
