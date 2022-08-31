// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract immuteableTest {

    // 可以给直接定义的变量减少gas (不可变量)
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

    uint public x;

    function foo() public {
        require(owner == msg.sender);
        x += 1;
    }
}