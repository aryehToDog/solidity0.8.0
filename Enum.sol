// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Enum {

    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelde
    }

    Status public status;

    struct Order {
        address order;
        Status status;
    }

    Order[] public orders;

    function get() public view returns(Status){
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function ship() public {
        status = Status.Shipped;
    }

    function deleted() public {
        delete status;
    }

}