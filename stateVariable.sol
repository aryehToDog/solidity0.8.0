// SPDX-License-Identifier: GPL-3.0
// 状态变量
pragma solidity ^0.8.7;

contract stateVariables {

    uint public myUint = 123;

    function foo() external pure {
        uint notStateVariable = 456;
    }

}