# Crypto Hash and Donation Smart Contracts

This repository contains two main components:
1. **A JavaScript program** for generating specific SHA-256 hashes.
2. **A Solidity smart contract** for managing donations in Ethereum.

## Table of Contents
- [Crypto Hash Generator](#crypto-hash-generator)
  - [DesiredHash Function](#desiredhash-function)
  - [Transaction-Based Hash Function](#transaction-based-hash-function)
- [Donation Smart Contract](#donation-smart-contract)
  - [Features](#features)
  - [Contract Functions](#contract-functions)
  - [Example Usage](#example-usage)

## Crypto Hash Generator

### DesiredHash Function

This function finds a SHA-256 hash that starts with a specific pattern ("00000"). It works by concatenating a string (provided as an input) with a continuously incremented number. The loop runs until the hash starts with the desired pattern.

- **Variables**:
  - `desiredString`: The input string that is combined with a number to generate the hash.
  - `number`: The counter that is incremented until the desired hash is found.
  - `hash`: The resulting SHA-256 hash for each combination of `desiredString` and `number`.

### Transaction-Based Hash Function

This version of the hash function builds a string from transaction data, which is an array of `[sender, receiver, amount]`. It then follows a similar process to find a hash starting with "00000."

- **Variables**:
  - `transection`: A 2D array where each entry contains a sender, receiver, and amount.
  - `transString`: A concatenated string representing the transaction data.
  - `number`: The incremented number combined with `transString` to find the hash.
  - `hash`: The SHA-256 hash generated for each combination.

## Donation Smart Contract

This Solidity smart contract allows users to donate Ether to specific recipients and enables recipients to withdraw their donations. Donors can track their contributions, and recipients can check their total received donations.

### Features
- **Donate Ether**: Donors can send Ether to a specified recipient address.
- **Withdraw Funds**: Recipients can withdraw the Ether donated to them.
- **Track Donations**: Donors can check their total donations, and recipients can view the total funds available to them for withdrawal.

### Contract Functions

1. **donate(address recipient)**: Allows users to send Ether to the recipient.
   - `recipient`: The address of the recipient.
   - `msg.value`: The Ether amount being donated.

2. **withdraw()**: Allows recipients to withdraw their Ether.
   - `msg.sender`: The recipient requesting the withdrawal.
   - `recipients[msg.sender]`: The balance available for withdrawal.

3. **getDonorBalance()**: Returns the total amount of Ether donated by the caller.
   - `donors[msg.sender]`: The total amount the caller has donated.

4. **getTotalDonations(address recipient)**: Returns the total donations received by a specific recipient.
   - `recipients[recipient]`: The total amount available for withdrawal by the recipient.

### Example Usage

1. **Donate Ether**: Call the `donate()` function with a recipient address and an Ether value.
2. **Withdraw Ether**: Recipients can call the `withdraw()` function to withdraw their donations.
3. **Track Donations**: Use `getDonorBalance()` to see your total donations or `getTotalDonations()` to view the total donations for a recipient.
