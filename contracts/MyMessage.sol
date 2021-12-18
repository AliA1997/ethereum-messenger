pragma solidity ^0.4.24;

contract MyMessage {
    string myMessage;
    uint balance;
    function setMessage(string message) public payable {
        myMessage = message;
        balance += msg.value;
    }
    function getMessage() public view returns(string) {
        return myMessage;
    }
    function getBalance() public view returns(uint) {
        return balance;
    }
}