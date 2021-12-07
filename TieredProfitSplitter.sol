pragma solidity ^0.5.0;

// lvl 2: tiered split
contract TieredProfitSplitter {
    address payable employee_one; // ceo
    address payable employee_two; // cto
    address payable employee_three; // bob

    // account_one 0xEAd23220F7Dfbe93691e93d017D4e3Cc7F95D30C
    // account_two 0xde403f36047B9fdA20eB0C2CfB6E41F1b26b818D
    // account_three 0x3F70cE8AB6E969b9F53df7dEfdc7886C5F69584E
    
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    // Should always return 0! Use this to test your `deposit` function's logic
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint total ;  
        uint amount ;
    

        // @TODO: Calculate and transfer the distribution percentage
        // Step 1: Set amount to equal `points` * the number of percentage points for this employee
        // Step 2: Add the `amount` to `total` to keep a running total
        // Step 3: Transfer the `amount` to the employee
        amount = points * 60;
        total += amount;
        employee_one.transfer(amount);


        // @TODO: Repeat the previous steps for `employee_two` and `employee_three`
        amount = points * 25;
        total += amount;
        employee_two.transfer(amount);

        amount = points * 15;
        total += amount;
        employee_three.transfer(amount);

        employee_one.transfer(msg.value - total); // ceo gets the remaining wei
    }

    function() external payable {
        deposit();
    }
}
