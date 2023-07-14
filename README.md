# evm_language_benchmark

## Languages

The most popular EVM languages:
```
Solidity
Yul
Vyper
Fe
Huff
LLL
```

## History

-LLL is the first EVM language which is low level and uses Lisp syntax ((like this))
-Yul is a low level EVM language that can be injected into Solidity as assembly to potentially save gas (not guranted since it is considered a "dark art" https://www.youtube.com/watch?v=ew3pfnb2_V8)
-Solidity is a high level EVM language with Javascript syntax
-Vyper is a high level EVM language with Python syntax
-Fe is a high level EVM language developed by the Ethereum Foundation with Rust syntax
-Huff is a low level gas optmized language developed by Aztec Protocol for interacting with the EVM stack 

## Test

Benchmark gas costs for:

```
-Deploy contract (depends on bytecode size and opcode gas costs)
-Writing to a smart contract storage slot and revert if the  
    -calldata matches the storage value
    -caller is not the owner, then record the block.timestamp in storage
```

### Deploy Benchmark

WIP

### Deploy Benchmark

WIP

### Deploy Benchmark

WIP

## Applications

```
Solidity - 
Yul - You want to explore the dark side of the EVM 
Vyper - Learning EVM  smart contracts with Python flavor
Fe - Learning EVM smart contracts with Rust flavor
Huff - You want EVM smart contract gas optimization 
LLL - You want to learn the history of EVM smart contracts and be able to read old Ethereum tests written in LLL https://github.com/ethereum/tests
```

## Huff Humor 

https://twitter.com/jtriley_eth/status/1676442993174396929

## Contributing

If you would like to tune any smart contract for these tests, 
open a pull request with updated benchmarks.