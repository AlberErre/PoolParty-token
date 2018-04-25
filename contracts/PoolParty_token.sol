/**
 * @title PoolParty Token
 * @author Alber Erre
 */
contract PoolPartyToken is Ownable {
  using SafeMath for uint256;
  
  struct HOLDers {
    address HOLDersAddress;
  }
  HOLDers[] public HOLDersList;
  function _alreadyInList(address _thisHODLer) internal view 
  returns(bool HolderinList) {
    bool result = false;
    for (uint256 r = 0; r < HOLDersList.length; r++) {
      if (HOLDersList[r].HOLDersAddress == _thisHODLer) {
        result = true;
        break;
      }
    }
    return result;
  }
  function AddHOLDer(address _thisHODLer) internal {
    if (_alreadyInList(_thisHODLer) == false) {
      HOLDersList.push(HOLDers(_thisHODLer));
    }
  }
  function UpdateHOLDer (address _currentHODLer, address _newHODLer, 
  uint256 RestBalance) internal {
     for (uint256 r = 0; r < HOLDersList.length; r++) {
        if (HOLDersList[r].HOLDersAddress == _currentHODLer) {
          if (RestBalance == 0) {
              HOLDersList[r].HOLDersAddress = _newHODLer;
          } else {
              AddHOLDer(_newHODLer);
          }
        }
      }
   }
 }