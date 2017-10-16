pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    Dummy dummy;
    function withdrawBalance() {
        bool isZero;
        isZero = dummy.isZero(0);
        isZero = dummy.isZero(1);
        if (isZero){
		    uint amountToWithdraw = userBalances[msg.sender];
	    	userBalances[msg.sender] = 0;
	    	msg.sender.send(amountToWithdraw);
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