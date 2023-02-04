// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function testIncrement() public {
        counter.incrementCounter();
        assertEq(counter.getCount(), 11);
        emit log_named_int("The increment value is:", counter.getCount());
    }
    
    function testGetCount() public {
        int value = counter.getCount();
        assertEq(value, 10);
        emit log_named_int("The initial value is:", value);
    }

    function testDecrement() public {
        counter.decrementCounter();
        assertEq(counter.getCount(), 9);
        emit log_named_int("The intial value is:", counter.getCount());
    }

    // function testSetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.count, x);
    // }
}
