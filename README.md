# Unit-20-Solidity-Contracts
Unit 20 Solidity Contracts Homework

## AssociateProfitSplitter.sol
### On the Ropsten Network Contract 
### 0xFD1A0Da3dB4d5f5Fa18Bc0cca00D4F9c50EBe322

This smart contract will accept ether into the contract, and divide it evenly among associate-level employees. This will allow the human resources department to pay employees quickly and efficiently.

### How to Use this Smart Contract:

Please see the associated GIF file in the "screenshots" folder. Start by nominating the wallet address that deploys the contract, this would be the employers address. The specify the employee wallet addresses. This is done when you deploy (make sure you deploy with 0 value etherium, you will be charged a gas fee anyway)

To transfer payments to the employees enter the value of Ethereum or equavalent Wei and the select the DEPOSIT button on the deployed contract. The deposit will be split three ways and any remaining amount will be returned to the employer wallet address.

The BALANCE button will give you the balance of the contract. This should always be zero. 

![](Screenshots/AssociateProfitSplitter.gif) 

## TieredProfitSplitter.sol
### On the Ropsten Network Contract 
### 0xd565FE68e4cf9C3627816ab6413c491A42ABB720

This smart contract will distribute different percentages of incoming ether to employees at different tiers/levels. For example, the CEO gets paid 60%, CTO 25%, and Bob gets 15%.

### How to Use this Smart Contract:

In a similar way to the previous contract three different employees having three wallet addresses are sent a deposit based on their allocated proportions. In this case we send 60, 25, 15 percent to the three addresses. 

The internal functions keep a record of these transactions. After the distribution any remaining amount will be returned to the employer wallet address.

![](Screenshots/TieredProfitSplitter.gif)

## DeferredEquityPlan.sol
### On the Ropsten Network Contract 
### 0x4774F17E2DF48340f9024f00cB2979cE63414A25

This smart contract that models traditional company stock plans. This contract will automatically manage 1000 shares, with an annual distribution of 250 shares over four years for a single employee.

### How to Use this Smart Contract:

When this smart contract is deployed the start date is recorded. Every year ie 365 day the payment is unlocked and assigned shares will be sent to the relevant wallet address.

As time passes and the present time (NOW or Fakenow)passes the Unlock time then the shares can be distributed. This keeps happening until all the allocated shares have been distributed ie when  distributed_shares is lower than the total_shares distributed.

The fastForward function is used for testing and allows us to add 100 days to the time so that Fakenow vaiable can reach a time to tringger the Unlock_time.

![](Screenshots/DeferredEquityPlan.gif)
