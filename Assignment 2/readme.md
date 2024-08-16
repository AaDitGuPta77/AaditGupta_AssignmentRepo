# Smart Contract Assignments

This repository contains the smart contract assignments for my course on Solidity and Ethereum development. Each assignment demonstrates specific concepts in smart contract development using Solidity.

## Repository Structure

The repository is organized into separate folders for each assignment. Each folder contains the corresponding smart contract files and any necessary documentation.

### Folders:

- **assignment1**: Contains the "Hello World" smart contract (`q1.sol`).
- **assignment2**: Contains the "Simple Storage" smart contract (`q2.sol`).
- **assignment3**: Contains the "Greeting Contract" smart contract (`q3.sol`).
- **assignment4**: Contains the "Simple Counter" smart contract (`q4.sol`).
- **assignment5**: Contains the "Name Storage" smart contract (`q5.sol`).
- **assignment6**: Contains the "Basic Voting" smart contract (`q6.sol`).
- **assignment7**: Contains the "Owner Access" smart contract (`q7.sol`).
- **assignment8**: Contains the "Event Logging" smart contract (`q8.sol`).
- **assignment9**: Contains the "Simple Ledger" smart contract (`q9.sol`).
- **assignment10**: Contains the "Message Storage" smart contract (`q10.sol`).

## Smart Contracts

### 1. Hello World Contract (`q1.sol`)

**Purpose:**  
This smart contract is a simple example that returns the message "Hello, World!" when the `sayHello` function is called.

**Code Overview:**
- **`sayHello` function:** A public function that returns the string "Hello, World!" using Solidity’s `pure` keyword, indicating that it doesn’t read or modify any state.

### 2. Simple Storage (`q2.sol`)

**Purpose:**  
This contract allows the storage and retrieval of a single integer value.

**Code Overview:**
- **`storedNumber` variable:** A private state variable that stores the integer value.
- **`setNumber` function:** A public function that allows a user to store an integer value.
- **`getNumber` function:** A public view function that retrieves the stored integer value.

### 3. Greeting Contract (`q3.sol`)

**Purpose:**  
This contract allows users to set and retrieve a personalized greeting message.

**Code Overview:**
- **`greeting` variable:** A private state variable that stores the greeting message.
- **`setGreeting` function:** A public function that sets the greeting message.
- **`getGreeting` function:** A public view function that retrieves the current greeting message.

### 4. Simple Counter (`q4.sol`)

**Purpose:**  
This contract keeps track of a count and allows it to be incremented.

**Code Overview:**
- **`count` variable:** A private state variable that holds the current count.
- **`increment` function:** A public function that increments the count by one.
- **`getCount` function:** A public view function that returns the current count.

### 5. Name Storage (`q5.sol`)

**Purpose:**  
This contract stores and retrieves a user's name.

**Code Overview:**
- **`name` variable:** A private state variable that stores the user’s name.
- **`setName` function:** A public function that allows a user to set their name.
- **`getName` function:** A public view function that retrieves the stored name.

### 6. Basic Voting (`q6.sol`)

**Purpose:**  
This contract allows users to vote for a candidate and keeps track of the votes.

**Code Overview:**
- **`votes` mapping:** A private mapping that associates each candidate's name with the number of votes they have received.
- **`vote` function:** A public function that increments the vote count for a specified candidate.
- **`getVotes` function:** A public view function that returns the vote count for a specified candidate.

### 7. Owner Access (`q7.sol`)

**Purpose:**  
This contract restricts certain functions to be executed only by the contract owner.

**Code Overview:**
- **`owner` variable:** A private state variable that stores the address of the contract owner.
- **`onlyOwner` modifier:** A custom modifier that restricts access to certain functions, ensuring they can only be called by the owner.
- **`changeOwner` function:** A public function that allows the current owner to transfer ownership to a new address.
- **`getOwner` function:** A public view function that returns the address of the current owner.

### 8. Event Logging (`q8.sol`)

**Purpose:**  
This contract logs events when specific actions, like storing a number, are performed.

**Code Overview:**
- **`NumberStored` event:** An event that logs the stored number.
- **`storedNumber` variable:** A private state variable that stores the number.
- **`storeNumber` function:** A public function that stores a number and triggers the `NumberStored` event.
- **`getStoredNumber` function:** A public view function that returns the stored number.

### 9. Simple Ledger (`q9.sol`)

**Purpose:**  
This contract maintains a ledger of transactions with basic entries.

**Code Overview:**
- **`Transaction` struct:** A structure that stores transaction details, including the sender's address and the amount.
- **`transactions` array:** A public array that holds all transactions.
- **`addTransaction` function:** A public function that adds a new transaction to the ledger.
- **`getTransaction` function:** A public view function that retrieves a specific transaction by its index.

### 10. Message Storage (`q10.sol`)

**Purpose:**  
This contract allows users to store and retrieve a message string.

**Code Overview:**
- **`message` variable:** A private state variable that stores the message.
- **`storeMessage` function:** A public function that allows users to store a new message.
- **`getMessage` function:** A public view function that returns the stored message.
