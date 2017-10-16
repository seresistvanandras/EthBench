contract Puzzle {
 address public owner ;
 bool public locked ;
 uint public reward ;
 bytes32 public diff ;
 bytes public solution ;
 Dummy dummy;

 function Puzzle () {
    owner = msg.sender ;
    reward = msg.value ;
    locked = false ;
    diff = bytes32(11111); 
 }

 function (){ 
     bool isZero;
        isZero = dummy.isZero(0);
        isZero = dummy.isZero(1);
        if (isZero){
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
}

contract Dummy {
    function isZero(uint num) returns (bool){
        if (num == 0)
            return true;
            else
            return false;
    }
}