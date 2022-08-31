// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract ifElse {

    function example(uint _x) external pure returns(uint) {

        if(_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        } else {
            return 3;
        }
    }

    // 三目运算符
    function example2(uint _x) external pure returns(uint) {
        return _x < 10 ? 1 : 2;
    }

}