// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public owner;
    address[] public players;
    uint public ticketPrice;

    constructor(uint _ticketPrice) {
        // The contract deployer is the owner
        owner = msg.sender;
        ticketPrice = _ticketPrice;
    }

    // Modifier to ensure only the owner can call certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Enter the lottery by sending the exact ticket price
    function enterLottery() public payable {
        require(msg.value == ticketPrice, "Please send the exact ticket price");
        players.push(msg.sender);
    }

    // Get the balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Get the list of players who entered the lottery
    function getPlayers() public view returns (address[] memory) {
        return players;
    }

    // Random number generator (NOT secure for production)
    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }

    // Pick a winner and transfer the balance to them
    function pickWinner() public onlyOwner {
        require(players.length > 0, "No players have entered the lottery");

        uint index = random() % players.length;
        address winner = players[index];

        // Transfer the entire contract balance to the winner
        payable(winner).transfer(address(this).balance);

        // Reset the lottery
        players = new address ;
    }

    // Allows the owner to withdraw the remaining balance
    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
