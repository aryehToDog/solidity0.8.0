// SPDX-License-Identifier: GPL-3.0
// 局部变量
pragma solidity ^0.8.7;

contract localVariable {

    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {

        uint x = 123;
        bool f = false;

        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);

    }

}