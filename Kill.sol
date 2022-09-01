// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Kill {

    constructor() payable {}

    function kill() external {
        selfdestruct(payable(msg.sender));
    }

    function testKill() external pure returns(uint) {
        return 123;
    }
}

contract CallKill {

    function getbalance() public view returns (uint) {
        return address(this).balance;
    }

    function kill(Kill _kill) public  {
        _kill.kill();
    }

}