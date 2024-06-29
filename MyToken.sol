// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(uint initial_supply,address owner) ERC20("MyToken", "MTK")  Ownable(owner) {
       
        _mint(owner, initial_supply);
    }

    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    
    function transferTokens(address to, uint256 amount) public returns (bool) {
        return transfer(to, amount);
    }
}
