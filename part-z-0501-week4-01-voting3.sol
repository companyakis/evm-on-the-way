/*
Let's allow voters to change their vote. Adding this functionality will require that we account for the vote change in the vote counts. 
This means that if the address previously voted yes and switched to no, we'll want to decrement the yesCount and increment the noCount. And vice-versa!

Your Goal: Vote Changing
Modify the castVote function to allow voters to change their vote on a particular proposal.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {

    enum Vote {
        Yes,
        No,
        NotVoted
    }

    struct Proposal {

        address target;
        bytes data;
        uint yesCount;
        uint noCount;
        mapping(address => Vote) votes;
    }

    Proposal[] public proposals;

    function newProposal(address _t, bytes memory _data) external {

        Proposal storage newProp = proposals.push();

        newProp.target = _t;
        newProp.data = _data;
        // yesCount and noCount are already 0
    }

    function castVote(uint proposalId, bool YesOrNo) external {

        require(proposalId < proposals.length, "Invalid proposal ID");

        Proposal storage proposal = proposals[proposalId];

        address voter = msg.sender;

        Vote currentVote = proposal.votes[voter];

        Vote newVote = YesOrNo ? Vote.Yes : Vote.No;

        if (currentVote != newVote) {

            if (currentVote == Vote.Yes) {
                proposal.yesCount--;
            } else if (currentVote == Vote.No) {
                proposal.noCount--;
            }

            if(YesOrNo) {
                proposal.yesCount++;
            } else {
                proposal.noCount++;
            }

            proposal.votes[voter] = newVote;

        } else {
            
            revert("You have already voted this way!");
        }

    }




}
