pragma solidity ^0.4.0;
contract EtherBank{
    mapping (address => uint) userBalances;
    Dummy dummy;
    function getBalance(address user) constant returns(uint) {  
		return userBalances[user];
	}

	function addToBalance() {  
		userBalances[msg.sender] += msg.value;
	}

	function withdrawBalance() {
	    bool isZero;
        isZero = dummy.isZero(0);
        isZero = dummy.isZero(1);
        if (isZero){
		    uint amountToWithdraw = userBalances[msg.sender];
	    	if (!(msg.sender.call.value(amountToWithdraw)())) { throw; }
	    	userBalances[msg.sender] = 0;
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