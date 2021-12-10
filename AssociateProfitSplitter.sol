pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.

    address payable employee_one ;
    address payable employee_two ;
    address payable employee_three ;

    // Employer 0x18d00a5f7730a414A3979fB5bcd60104c69F0ed2

    // account_one 0xEAd23220F7Dfbe93691e93d017D4e3Cc7F95D30C
    // account_two 0xde403f36047B9fdA20eB0C2CfB6E41F1b26b818D
    // account_three 0x3F70cE8AB6E969b9F53df7dEfdc7886C5F69584E

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint amount = msg.value / 3; 

        // @TODO: Transfer the amount to each employee
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);
        

        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        msg.sender.transfer(msg.value - amount * 3 ); 
 
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        deposit();

    }
}