// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract mappingTest {

    mapping (address => uint) balances;
    mapping (address => bool) inserted;
    address[] public keys;

    function setKey(address _key, uint _value) external {

        balances[_key] = _value;
        if(!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns(uint) {
        return keys.length;
    }

    function first() external view returns(uint) {
        return balances[keys[0]];
    }

    function last() external view returns(uint) {
        return balances[keys[keys.length - 1]];
    }

    function get(uint _i) external view returns(uint) {
        return balances[keys[_i]];
    }

}