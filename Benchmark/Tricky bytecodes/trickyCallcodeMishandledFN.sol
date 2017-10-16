pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    function withdrawBalance() {  
		uint amountToWithdraw = userBalances[msg.sender];
		userBalances[msg.sender] = 0;
		msg.sender.send(amountToWithdraw);
	}
}

contract mishandled{
	mapping (address => uint) userBalances;
   function payingBack() { 
     var c=SendBack(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
    bool returnValue=c.callcode('withdrawBalance');
}     
}