// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract PiggyBank {

    address public owner = msg.sender;

    event Deposit(uint amount);
    event Withdraw(uint amount);

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() public {
        require(msg.sender == owner, "not owner");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }

}