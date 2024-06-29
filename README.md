
# MyToken Contract

## Overview
MyToken is an ERC20 token contract written in Solidity. It includes functionalities for minting tokens, transferring tokens, and burning tokens. The contract is also Ownable, allowing for owner-specific actions.

## Prerequisites

- Solidity ^0.8.26
- Remix IDE (https://remix.ethereum.org/)

## Contract Details

### Features
- ERC20 Standard: Implements standard ERC20 token functionalities.
- Ownable: Includes functionality for ownership management.

### Constructor
```solidity
constructor(uint initial_supply, address owner) ERC20("MyToken", "MTK") Ownable(owner) {
    _mint(owner, initial_supply);
}
```
- **Description**: Initializes the contract with an initial supply of MyToken tokens, minted to the specified owner.

### Functions

#### mint
```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```
- **Description**: Mints new MyToken tokens.
- **Modifiers**: `onlyOwner` ensures only the contract owner can mint tokens.

#### burn
```solidity
function burn(uint256 amount) public {
    _burn(msg.sender, amount);
}
```
- **Description**: Burns MyToken tokens from the caller's balance.

#### transferTokens
```solidity
function transferTokens(address to, uint256 amount) public returns (bool) {
    return transfer(to, amount);
}
```
- **Description**: Transfers MyToken tokens to another address.

## Usage

1. **Deploy Contract**:
   - Use Remix IDE to deploy the MyToken contract.
   - Create a new file in Remix and paste the contract code.

2. **Compile Contract**:
   - In Remix, select the Solidity compiler version 0.8.26.
   - Click the "Compile" button to compile the contract.

3. **Deploy Contract**:
   - Go to the "Deploy & Run Transactions" tab in Remix.
   - Select an environment for a local blockchain.
   - Deploy the contract by selecting the `MyToken` contract and clicking "Deploy."

4. **Interact with Contract**:
   - After deployment, use the Remix interface to interact with the contract functions such as `mint`, `burn`, and `transferTokens`.

## Authors
Divanshi  
[DivanshiChauhan](https://github.com/DivanshiChauhan)

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
