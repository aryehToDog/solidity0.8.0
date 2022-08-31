// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Account {

    address public owner;
    address public bank;

    constructor(address _onwer) payable  {
        bank = msg.sender;
        owner = _onwer;
    }

}

contract AccountFactory {

    Account[] public accounts;

    function creatAccount(address _owner) external {
        Account account = new Account(_owner);
        accounts.push(account);
    }
}