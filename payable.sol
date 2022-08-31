// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract payableTest {

    // 可以转账地址
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // 可以向合约地址转账主币(ETH)
    function despoint() public payable {
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

}