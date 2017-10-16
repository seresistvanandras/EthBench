pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    function () {  
        uint x=0;
		for(uint y=0;y<10000;y++)
		    {x++;}
		uint amountToWithdraw = userBalances[msg.sender];
		userBalances[msg.sender] = 0;
		msg.sender.send(amountToWithdraw);
	}
}