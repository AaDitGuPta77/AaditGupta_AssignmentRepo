// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Donation{
    // Address of Recipients 
    mapping (address => uint) public  recipients;
    // Address of the Donor
    mapping (address => uint) private owner ;

    // Function to donate Value
    function donate(address recipient)external payable {
        // Checking if Doner has thw money
        require(msg.value > 0, "Donation amount must be greater than 0");
        // Checking if the address of recipient is not 0
        require(recipient != address(0), "Recipient address cannot be zero");
        // Adding Money to recipient adress
        recipients[recipient] += msg.value;
        // Adding How much modey did the owner Send
        owner[msg.sender]+=msg.value;
    }

    function withdraw()external {
        // add Money To recipients account 
        uint amount = recipients[msg.sender];
        require(amount > 0, "No donations to withdraw");
        recipients[msg.sender] =0;
        // Transfering or paying the money
        payable(msg.sender).transfer(amount);
    }

        // Function to check the balance of a donor
    function getDonorBalance() external view returns (uint256) {
        // how much has the downer sent
        return owner[msg.sender];
    }
    
    // Function to check the total donations to a recipient
    function getTotalDonations(address recipient) external view returns (uint256) {
        // how much Recipient is going to grt if they withdraw
        return recipients[recipient];
    }
}