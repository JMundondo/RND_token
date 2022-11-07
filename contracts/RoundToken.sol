// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";



contract RoundToken is ERC20 , ERC20Detailed ,ERC20Mintable,ERC20Capped {
    constructor() 
    ERC20Detailed("Round", "RND", 18) 
    ERC20Capped(50000000)
  
    public {
        _mint(msg.sender, 1000000);
    }
    
    
}