pragma solidity ^0.4.21

/**
 * @title PoolParty PayRoll
 * @author Alber Erre
 */
contract PoolPartyPayRoll is BasicToken {
  using SafeMath for uint256;
  mapping (address => uint256) PayRollCount;
  function _HOLDersPayRoll() onlyOwner public {
     uint256 _amountToPay = address(this).balance;
     uint256 individualPayRoll = 
           _amountToPay.div(uint256(HOLDersList.length));
  for (uint256 r = 0; r < HOLDersList.length; r++){
     address HODLer = HOLDersList[r].HOLDersAddress;
     HODLer.transfer(individualPayRoll);
     PayRollCount[HOLDersList[r].HOLDersAddress] = 
         PayRollCount[HOLDersList[r].HOLDersAddress].add(1);
     }
   }
  function PayRollHistory(address _thisHODLer) external view 
  returns (uint256) {
       return uint256(PayRollCount[_thisHODLer]);
   }
}
};

