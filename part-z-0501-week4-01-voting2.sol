/*
Voting 
Now that we have proposals with vote counts, it's time to create voting functionality!

Your Goal: Cast Vote
Create an external function castVote which takes a uint proposalId and a bool which indicates whether the vote supports the proposal (true for yes, false for no).
For each vote cast, update the yesCount and noCount in the referenced proposal accordingly.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {

    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;

    function newProposal(address _t, bytes memory _data) external {

        proposals.push(Proposal(_t, _data, 0, 0));
    }

    function castVote(uint proposalId, bool yesOrNo) external {

        if (yesOrNo == true) {

            proposals[proposalId].yesCount += 1;
        }

        else {

            proposals[proposalId].noCount += 1;
        }
    }
    
}
