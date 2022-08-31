// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract funcoutputs {

    function func() public pure returns(uint x , bool b) {
        return (1, true);
    }

    function getRetures() public pure {
        // (uint _x, bool _b) = func();

        (,bool _b) = func();
    }

}