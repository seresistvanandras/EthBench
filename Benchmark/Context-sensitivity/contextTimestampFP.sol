pragma solidity ^0.4.0;
contract lottopollo {
  address leader;
  uint    timestamp;
  Dummy dummy;
  function payOut(uint rand) internal {
    if ( rand> 0 && now - rand > 24 hours ) {
      msg.sender.send( msg.value );

      if ( this.balance > 0 ) {
        leader.send( this.balance );
      }
    }
    else if ( msg.value >= 1 ether ) {
      leader = msg.sender;
      timestamp = rand;
    }
  }
  function randomGen() constant returns (uint randomNumber) {
      return block.timestamp;   
    }
  function draw(uint seed){
      bool isZero;
        isZero = dummy.isZero(0);
        isZero = dummy.isZero(1);
        if (isZero){
            uint randomNumber=randomGen(); 
            payOut(randomNumber);
        }
  }
}

contract Dummy {
    function isZero(uint num) returns (bool){
        if (num == 0)
            return true;
            else
            return false;
    }
}