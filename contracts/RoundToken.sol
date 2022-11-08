// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

 // market cap at 40 000 000 usd
contract RoundToken is ERC20 , ERC20Detailed ,ERC20Mintable,ERC20Capped ,Ownable {
    constructor() 
    ERC20Detailed("Round", "RND", 18) 
    ERC20Capped(200000000) 
  
    public {
        _mint(msg.sender, 1000000);
    }
    
    function transferTokenOwnership(address _tokenAddress , address _crowdsaleAddress , uint256 _tokenAmount) public onlyOwner {

        IERC20(_tokenAddress).transfer(_crowdsaleAddress, _tokenAmount);
    }
    
}