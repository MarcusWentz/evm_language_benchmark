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
```
-LLL is the first EVM language which is low level and uses Lisp syntax ((like this))
-Yul is a low level EVM language that can be injected into Solidity as assembly to potentially save gas (not guranted since it is considered a "dark art" https://www.youtube.com/watch?v=ew3pfnb2_V8)
-Solidity is a high level EVM language with Javascript syntax
-Vyper is a high level EVM language with Python syntax
-Fe is a high level EVM language developed by the Ethereum Foundation with Rust syntax
-Huff is a low level gas optimized language developed by Aztec Protocol for interacting with the EVM stack 
```
## Benchmark 

### Setup

Benchmark gas costs for:

```
-Deploy contract (depends on bytecode size and opcode gas costs)
    -constructor()
        -record block.timestamp in storage slot 0
        -record msg.sender in storage slot 1
-setValue() 
    -revert if the calldata matches the storage value
    -otherwise, write calldata to storage slot 0
-ownerSetTime() 
    -revert if msg.sender is not the owner
    -otherwise, write block.timestamp to storage slot 0
```

### Deploy Address and Contract Size Benchmark (Sepolia)

| Language      | Contract Address                            | Contract Size (bytes)| 
| ------------- | ------------------------------------------  | -------------------- | 
| Solidity      | 0xfc711c294001bbc94eea0d096435b3b259ba3801  | 402                  | 
| Huff          | 0x117Efd397E4258DE7440A5c009A346fC1D27faBB  | 1,840                | 
| Yul           | 0xc56Db440f6B91315cAbFd684fCA4Ae2D8edaF1ec  | 1,340                |

### Function Gas Benchmark 


| Language      | constructor() | setValue() | ownerSetTime() |
| ------------- | ------------- | ---------- | -------------- |
| Solidity      | 274,181       | 27,424     | 29,212         |
| Huff          | 140,214       | 27,065     | 29,051         |
| Yul           | 233,512       | 27,432     | 29,062         |

Gas Used
https://sepolia.etherscan.io/tx/0x091892a46f80bbd73ec9ca74b759d9125deb32d9d64cb14d23eb679b2e142846

## Applications

```
Solidity - You want to learn the flagship EVM language https://www.youtube.com/@smartcontractprogrammer
Yul - You want to explore the dark side of the EVM https://www.youtube.com/watch?v=ew3pfnb2_V8
Vyper - Learning EVM  smart contracts with Python flavor
Fe - Learning EVM smart contracts with Rust flavor
Huff - You want EVM smart contract gas optimization 
LLL - You want to learn the history of EVM smart contracts and be able to read old Ethereum tests written in LLL https://github.com/ethereum/tests
```

## Contributing

If you would like to tune any smart contract for these tests, 
open a pull request with updated benchmarks.

## Huff Humor - Stack Schedule 

https://twitter.com/jtriley_eth/status/1676442993174396929