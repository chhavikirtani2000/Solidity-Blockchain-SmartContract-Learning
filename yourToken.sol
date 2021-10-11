pragma solidity ^0.4.21;


contract yourToken {

    //By using the keyword public, this variable is readable from the outside of this contract
    address public sender; //minter
    mapping (address => uint) public balances; //mapping between sender address and the balance amount
    
    /*
    This is the definition of an event. 
    This will allow UI to react to changes efficiently. This is explained through example below.

    Declare Event:
    event Sent(address indexed _from, address indexed _to, uint _amount);

    Emit event:
    emit Sent(msg.sender, receiver, amount);

    Here the event Sent stores the arguments that are part of the transaction log. 
    For example, when sender A sends amount x to receiver b, this detail log is stored in the event.
    When we emit this event, the log data stores in it will be printed.
    */
    event Sent(address from, address to, uint amount);
    
    //This is how constructor is defined. It will be called when the contract is created.
    function yourToken() public {
        
        sender = msg.sender;
        
    }
    
    //in eutherium, digital currency can be created if you are the minter (the address of minter is stored in the variable sender)
    function mint(address receiver, uint amount) public {
        
        //If the sender is not the official minter (one who is allowed to create digital currency), then the function will simply return.
        if(msg.sender != sender) return;
        //Increase the balance of the receiver by amount.
        balances[receiver]+=amount;
        
    }
    
    //A sender can send the digital money to a particular receiver from their own balance by using the function send
    function send(address receiver, uint amount) public {
        //If the sender doesn't have enough balance then the function will just return.
        if(balances[msg.sender] < amount) return;

        //reduce amount from sender's balance and increase it in receiver's balance.
        balances[msg.sender]-=amount;
        balances[receiver]+=amount;

        //This will print the log: sender, receiver, amount. This is a form of confirmation.
        emit Sent(msg.sender, receiver, amount);
        
    }
    
    
}