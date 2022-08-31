// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract E {

    event log(string message);

    function foo() public virtual {
        emit log("E.foo");
    }

    function bar() public virtual {
        emit log("E.bar");
    }

}

contract F is E {

    function foo() public virtual override {
        emit log("F.foo");
        E.foo();
    }

    function bar() public virtual override {
        emit log("F.bar");
        super.bar();
    }
}

contract G is E {

    function foo() public virtual override {
        emit log("G.foo");
        E.foo();
    }

    function bar() public virtual override {
        emit log("G.bar");
        super.bar();
    }
}

contract H is F , G {

    function foo() public  override(F,G) {
        emit log("H.foo");
        F.foo();
    }

    function bar() public override(F,G) {
        emit log("H.bar");
        super.bar();
    }

}