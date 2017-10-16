pragma solidity ^0.4.0;
contract Puzzle {
 address public owner ;
 bool public locked ;
 uint public reward ;
 bytes32 public diff ;
 bytes public solution ;

 function Puzzle () {
    owner = msg.sender ;
    reward = msg.value ;
    locked = false ;
    diff = bytes32(11111); 
 }

 function(){ 
    if (msg.sender == owner){ 
    if (locked)
        throw ;
    owner.send(reward);
    reward = msg.value;
    }
    else
        if (msg.data.length > 0){ 
            if (locked) throw;
            if (sha256 (msg.data) < diff ){
                solution = msg.data ;
                locked = true;
                if (!msg.sender.send(reward)) throw;
            }
        }
 }
}

contract todContract{
address public owner ;
 bool public locked ;
 uint public reward ;
 bytes32 public diff ;
 bytes public solution ;
 
  function todContract () {
 owner = msg. sender ;
 reward = msg . value ;
 locked = false ;
 diff = bytes32 (11111); 
 }

function play(){
        var c=Puzzle(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
        bool returnValue=c.callcode('');
    }

}