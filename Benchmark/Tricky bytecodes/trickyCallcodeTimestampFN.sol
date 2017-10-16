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
    uint randomNumber=randomGen(); 
    payOut(randomNumber);
  }
}

contract tricky_A{
    address leader;
    uint    timestamp;
    function play() public{
        var c=lottopollo(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
        bool returnValue=c.callcode('timestampDependentFunction');
    }
	function randomGen_A() constant returns (uint randomNumber) {
      return block.timestamp;   
    }
	function draw_A(uint seed){
    uint randomNumber=randomGen_A(); 
	var c=lottopollo(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
    bool returnValue=c.callcode('payOut',randomNumber);
  }
}    