// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SimpleLedger {
    struct Transaction {
        address sender;
        uint256 amount;
    }

    Transaction[] public transactions;

    function addTransaction(uint256 amount) public {
        transactions.push(Transaction(msg.sender, amount));
    }

    function getTransaction(uint256 index) public view returns (address, uint256) {
        Transaction memory txn = transactions[index];
        return (txn.sender, txn.amount);
    }
}