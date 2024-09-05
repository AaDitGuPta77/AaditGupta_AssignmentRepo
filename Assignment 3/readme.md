# Lottery System Smart Contract

This repository contains the lottery system smart contract developed using Solidity. The contract allows users to enter a lottery, and the contract owner can select a random winner to receive all the Ether collected.

## Repository Structure

The repository is organized into a folder for the lottery system contract, including the Solidity contract file and necessary documentation.

### Folder:

- *lottery_contract*: Contains the lottery smart contract (Lottery.sol).

## Smart Contract Description

### Lottery System Contract (Lottery.sol)
This smart contract implements a basic lottery system where players enter by sending a fixed amount of Ether, and a random winner is selected by the owner. The winner receives the entire balance of the contract, and the lottery resets for the next round.

#### Key Features:
1. *Owner-Only Functions:*
   - Only the contract owner can pick a winner and withdraw remaining funds.
   
2. *Lottery Entry:*
   - Players enter by sending the exact Ether required for a ticket. Their address is stored in the contract for winner selection.
   
3. *Random Winner Selection:*
   - A pseudo-random function is used to select the winner based on block information and the players array.
   
4. *Automatic Payout:*
   - The winner is paid automatically, and the players list is reset.

## Getting Started

### Prerequisites

- [Remix IDE](https://remix.ethereum.org/) or a local development environment with tools like Truffle, Hardhat, or Ganache.
- Basic knowledge of Solidity and Ethereum smart contracts.

### How to Deploy and Run the Contract

1. Clone the repository:
   ```bash
   git clone https://github.com/YourGitHubUsername/LotterySystemContract.git
