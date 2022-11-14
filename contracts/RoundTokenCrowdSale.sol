// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
//import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";
//import "@openzeppelin/contracts/crowdsale/emission/MintedCrowdsale.sol";
//MintedCrowdsale()

contract RoundTokenCrowdSale is Crowdsale   {

  constructor(
        uint256 rate,            // rate, in TKNbits
        address payable wallet,  // wallet to send Ether
        IERC20 token           // the token
        )
        
        Crowdsale(rate, wallet , token) public
    {
       
    }



   

    
}