// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";


contract RoundTokenCrowdSale is Crowdsale ,Ownable  {

  constructor(
        uint256 rate,            // rate, in TKNbits
        address payable wallet,  // wallet to send Ether
        IERC20 token           // the token
        )
Crowdsale(rate, wallet, token) public
    {
       
    }



   

    
}