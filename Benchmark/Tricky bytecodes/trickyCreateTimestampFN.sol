pragma solidity ^0.4.0;
contract lottopollo {
  address leader;
  uint    timestamp;
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
    D d=new D(4);
    uint randomNumber=randomGen(); 
    payOut(randomNumber);
  }
}

contract D {
    uint x;
    function D(uint a) payable {
        x = a;
    }
}