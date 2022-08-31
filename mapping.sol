// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Mapping {

    mapping (address => uint) public balances;
    mapping (address => mapping(address => bool)) public isFriend;

    function examples() external {

        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        delete balances[msg.sender];

        balances[msg.sender] += 456;

        isFriend[msg.sender][address(this)] = true;
    }
}