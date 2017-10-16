pragma solidity ^0.4.0;
contract SendBack {
    function payBack() {
        bool returnValue;
	    returnValue=msg.sender.send(msg.value);
    }
}
