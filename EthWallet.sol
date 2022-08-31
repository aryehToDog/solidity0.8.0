// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract EthWallet {

    address payable public owner;

    constructor() {
        owner = payable (msg.sender);
    }

    receive() external payable {}

    function withdraw(uint amount) public {
        require(owner == msg.sender, "owner should be vaild");
        owner.transfer(amount);
    }

    function getbalance() public view returns (uint){
       return address(this).balance;
    }

}