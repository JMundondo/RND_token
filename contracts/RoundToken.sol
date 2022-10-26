// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract RoundToken is ERC20 {
    constructor() ERC20("Round", "RND") {
        _mint(msg.sender, 1000000);
    }
    
    
}