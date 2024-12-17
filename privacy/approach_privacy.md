
### Privacy Ethernaut Challenge Number 12 



#### Challenge Description 

The creator of this contract was careful enough to protect the sensitive areas of its storage.

Unlock this contract to beat the level.

Things that might help:

Understanding how storage works
Understanding how parameter parsing works
Understanding how casting works
Tips:

Remember that metamask is just a commodity. Use another tool if it is presenting problems. Advanced gameplay could involve using remix, or your own web3 provider.



#### Approach 



Since solidity uses byte 32 blocks of memory. Usually for secure approach, 


For our approach, we can look at `unlock()` function to see potential vulnerabilities. We see that in this function it requires `require(_key == bytes16(data[2]));` having `bytes16` 
is rather unusual. Most of keys are do not use `byte16` as it only holds 128 bits. Even though this key size is very small, bruteforcing might not be the correct approach. 

Another interesting point is that the contract has set the `locked` state as false, which might be interesting to 


