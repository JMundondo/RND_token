// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract RoundTokenCrowedSale is Crowdsale ,Ownable  {

 

// Crowdsale Stages
  enum CrowdsaleStage { PreICO, ICO }
// Default to presale stage
  CrowdsaleStage public stage = CrowdsaleStage.PreICO;


 

    constructor (uint256 rate, address payable wallet, IERC20 token) 
     Crowdsale(rate, wallet, token) public 
     {
       
     }

     /**
  * @dev Allows admin to update the crowdsale stage
  * @param _stage Crowdsale stage
  */
  function setCrowdsaleStage(uint _stage ,uint _setRate ) public onlyOwner  {
    if(uint(CrowdsaleStage.PreICO) == _stage) {
      stage = CrowdsaleStage.PreICO;
    } else if (uint(CrowdsaleStage.ICO) == _stage) {
      stage = CrowdsaleStage.ICO;
    }

    if(stage == CrowdsaleStage.PreICO) {
        // rate at pre ico
      _rate = _setRate;
    } else if (stage == CrowdsaleStage.ICO) {
        // rate at crowdsalestage
      _rate = _setRate;
    }
  }


    
}