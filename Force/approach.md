

#### How would we approach this problem ? 




#### Potential Approach to this problem 

- [ ] Create a contract from scratch or use boilerplate implementations ? 
- [ ] Other Strategies ? 
- [ ] using `selfdestruct` address target to do this



##### Solution

basically anything that involves the constructor calling `selfdestruct(_target);` works as long as you are setting the `wei` as non-zero. 

I initially assumed that `self-destruct` would just do that wonders itself by iterating the balance by one. But I guess that is not the case. 


TODO 
- [ ] review more of the solidity documentation 



Force level  image
Some contracts will simply not take your money ¯\_(ツ)_/¯

The goal of this level is to make the balance of the contract greater than zero.

  Things that might help:

Fallback methods
Sometimes the best way to attack a contract is with another contract.
See the "?" page above, section "Beyond the console"

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Force { /*
                   MEOW ?
         /\_/\   /
    ____/ o o \
    /~____  =ø= /
    (______)__m_m)
                   */ }

                   

```