# Unit-20-Solidity-Contracts
Unit 20 Solidity Contracts Homework

## AssociateProfitSplitter.sol
This smart contract accepts deposits of Ether and evenly divides and distributes the Ether to the employee-level associates the contract is designed for when initially deployed. This makes the process easier for Human Resources to pay their employees with one input.

### How to Use this Smart Contract:

Please see the associated GIF file in the "screenshots" folder. Start by nominating the wallet address that deploys the contract, this would be the employers address. The specify the employee wallet addresses. This is done when you deploy (make sure you deploy with 0 value etherium, you will be charged a gas fee anyway)

To transfer payments to the employees enter the value of Ethereum or equavalent Wei and the select the DEPOSIT button on the deployed contract. The deposit will be split three ways and any remaining amount will be returned to the employer wallet address.

The BALANCE button will give you the balance of the contract. This should always be zero. 

## TieredProfitSplitter.sol
This smart contract accepts deposits of Ether and distributes them according to percentages defined within the contract. Compared to the AssociateProfitSplitter contract, the addresses of the employees are already defined within the contract.

/+
### How to Use this Smart Contract:

In a similar way to the previous contract three different employees having three wallet addresses are sent a deposit based on their allocated proportions. In this case we send 60, 25, 15 percent to the three addresses. 

The internal functions keep a record of these transactions. After the distribution any remaining amount will be returned to the employer wallet address.


## DeferredEquityPlan.sol
This smart contract distributes 1000 shares over 4 years to an active employee. After each vetting period, ownership of 250 shares are transferred annually.

### How to Use this Smart Contract:

When this smart contract is deployed the start date is recorded. Every year ie 365 day the payment is unlocked and assigned shares will be sent to the relevant wallet address.

As time passes and the present time (NOW or Fakenow)passes the Unlock time then the shares can be distributed. This keeps happening until all the allocated shares have been distributed ie when  distributed_shares is lower than the total_shares distributed.

The fastForward function is used for testing and allows us to add 100 days to the time so that Fakenow vaiable can reach a time to tringger the Unlock_time.

