# Solidity Smart Contracts for Crowdfunding and Voting System

This repository contains two smart contracts written in Solidity: a **Crowdfunding** platform and a **Voting System**. These contracts demonstrate essential decentralized features that allow participants to create crowdfunding campaigns and engage in voting processes securely on the blockchain.

---

## 1. Crowdfunding Platform

The **Crowdfunding** contract enables users to create and participate in decentralized crowdfunding campaigns. Users can contribute funds, and the contract tracks the total contributions. Once the campaign is finalized, the funds are either released to the campaign creator or refunded to the contributors, based on whether the funding goal was met.

### Features:
- **Campaign Creation**: Any user can create a crowdfunding campaign by specifying a funding goal and setting a deadline.
- **Fund Contributions**: Users can contribute funds to any active campaign before the deadline.
- **Campaign Finalization**:
  - If the target funding goal is reached by the deadline, the funds are released to the campaign creator.
  - If the target is not met, contributors are allowed to withdraw their funds.

### Flow:
1. **Create Campaign**: A user creates a campaign by defining a target goal and deadline.
2. **Contribute to Campaign**: Other users can contribute funds while the campaign is active.
3. **Finalize Campaign**: 
   - If the goal is met by the deadline, the creator receives the total funds.
   - If the goal is not met, contributors can claim their funds back.

---

## 2. Voting System

The **Voting System** contract provides a simple voting mechanism where participants can propose and vote on different proposals. Each address can only vote once for each proposal, and votes are tallied to determine the winning proposal.

### Features:
- **Proposal Creation**: Users can submit new proposals to the system.
- **Voting**: Participants can cast their vote for any existing proposal.
- **Single Vote Per Address**: Each address is allowed only one vote per proposal.
- **Determine Winning Proposal**: The contract includes functionality to determine the proposal with the highest number of votes.

### Flow:
1. **Add Proposal**: Any user can propose new options for voting.
2. **Vote on Proposal**: Registered users can cast a vote for any valid proposal.
3. **Determine Winner**: The proposal with the most votes is declared the winner.

---
