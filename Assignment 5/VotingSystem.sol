// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    struct Proposal {
        string name;
        uint voteCount;
    }

    struct Voter {
        bool hasVoted;
        uint vote;
    }

    Proposal[] public proposals;
    mapping(address => Voter) public voters;

    function addProposal(string memory proposalName) public {
        proposals.push(Proposal({
            name: proposalName,
            voteCount: 0
        }));
    }

    function vote(uint proposalIndex) public {
        require(!voters[msg.sender].hasVoted, "Already voted");
        require(proposalIndex < proposals.length, "Invalid proposal");

        voters[msg.sender].hasVoted = true;
        voters[msg.sender].vote = proposalIndex;

        proposals[proposalIndex].voteCount++;
    }

    function getWinningProposal() public view returns (uint winningProposalIndex) {
        uint winningVoteCount = 0;
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > winningVoteCount) {
                winningVoteCount = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }
    }

    function getProposalName(uint proposalIndex) public view returns (string memory) {
        require(proposalIndex < proposals.length, "Invalid proposal index");
        return proposals[proposalIndex].name;
    }
}
