/*
Your Goal: Members
Create a public constructor which takes an array of address. These addresses, plus the deployer of the function, should all be allowed to create new proposals and vote on those proposals.
If anyone else attempts to create a proposal or vote, the call should be reverted. 
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

    event ProposalCreated(uint proposalId);

    event VoteCast(uint proposalId, address indexed voter);

    mapping(address => bool) members;

    constructor(address[] memory _members) {
        for(uint i = 0; i < _members.length; i++) {
            members[_members[i]] = true;
        }
        members[msg.sender] = true;
    }


    function newProposal(address _t, bytes memory _data) external {

	    require(members[msg.sender]);
										
        emit ProposalCreated(proposals.length);

        Proposal storage newProp = proposals.push();

        newProp.target = _t;
        newProp.data = _data;
        // yesCount and noCount are already 0
    }

    function castVote(uint proposalId, bool YesOrNo) external {

	    require(members[msg.sender]);

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

        emit VoteCast(proposalId, msg.sender);

    }

}
