# DGNToken Smart Contract

**DGNToken** is an Ethereum ERC20 token that allows you to mint, transfer, burn, and redeem tokens for in-game items. The contract is based on the OpenZeppelin library and includes additional functionalities for managing tokens and in-game assets.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
- [Functions](#functions)
- [In-Game Store](#in-game-store)
- [License](#license)

## Overview

DGNToken is an ERC20 token named "Degen" with the symbol "DGN." It provides a set of functions that allow users to interact with the token, including minting, transferring, burning, and redeeming tokens for in-game items.

## Features

- Mint new tokens (only by the contract owner)
- Transfer tokens to other addresses
- Check the token balance of an address
- Burn tokens to reduce the total supply
- Redeem tokens for in-game items from a predefined store

## Getting Started

To deploy the DGNToken contract and start using its functions, follow these steps:

1. Deploy the smart contract to an Ethereum network compatible with Solidity ^0.8.18.
2. The contract owner can mint new tokens using the `mint` function.
3. Users can transfer tokens using the `transferTokens` function.
4. Users can check their token balance with the `checkBalance` function.
5. Users can burn their tokens using the `burnTokens` function.
6. Users can redeem tokens for in-game items using the `reedemTokens` function.

## Functions

- `mint(address to, uint256 amount)`: Mint new tokens and assign them to the specified address. (Owner only)

- `transferTokens(address _receiver, uint256 amount)`: Transfer tokens from the sender's address to the specified receiver's address.

- `checkBalance()`: Get the token balance of the calling address.

- `burnTokens(uint256 amount)`: Burn a specified amount of tokens from the caller's balance.

- `reedemTokens(uint256 choice)`: Redeem tokens for in-game items based on the provided choice:
  1. mystry item = 10
  2. Exclusive Skin = 25
  3. Enigma Box = 50
  4. Game Coin = 100
  5. Unique T-shirt = 200

## License

This smart contract is open-source and distributed under the MIT License. You can find the full license text in the [LICENSE](./LICENSE) file.

---
