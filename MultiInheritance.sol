// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract X {

    function foo() public virtual pure returns(string memory) {
        return "X";
    }

    function bar() public virtual pure returns(string memory) {
        return "x";
    }

    function x() public virtual pure returns(string memory) {
        return "x";
    }

}

contract Y is X {

    function foo() public virtual override pure returns(string memory) {
        return "Y";
    }

    function bar() public virtual override pure returns(string memory) {
        return "Y";
    }

    function y() public pure returns(string memory) {
        return "y";
    }

}

contract Z is X , Y{

    function foo() public override(X,Y) pure returns(string memory) {
        return "Z";
    }

    function bar() public override(X,Y) pure returns(string memory) {
        return "Z";
    }
}