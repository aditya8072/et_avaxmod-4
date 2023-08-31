// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract UniqueToken is ERC20, ERC20Burnable {
    address private soleOwner;
    uint256 private customRedeemValue;

    constructor() ERC20("DEGEN", "DGN") {
        soleOwner = msg.sender;
    }

    modifier onlySoleOwner() {
        require(msg.sender == soleOwner, "Unauthorized access");
        _;
    }

    function addrestransferTokens(address _recipient, uint256 transferAmount) external {
        require(balanceOf(msg.sender) >= transferAmount, "Low balance");
        approve(msg.sender, transferAmount);
        transferFrom(msg.sender, _recipient, transferAmount);
    }

    function mint_Tokens(address _targetAddress, uint256 mintAmount) public onlySoleOwner {
        _mint(_targetAddress, mintAmount);
    }

    function availableItems() public pure returns (string memory) {
        return "1. mystry item = 10\n 2. Exclusive Skin = 25\n 3. Enigma Box = 50\n 4. Game Coin = 100\n 5. Unique T-shirt = 200";
    }

    function redeemMyChoice(uint256 chosenItem) external {
        require(chosenItem >= 1, "Invalid selection");

        if (chosenItem == 1) {
            customRedeemValue = 10;
        } else if (chosenItem == 2) {
            customRedeemValue = 25;
        } else if (chosenItem == 3) {
            customRedeemValue = 50;
        } else if (chosenItem == 4) {
            customRedeemValue = 75;
        } else if (chosenItem == 5) {
            customRedeemValue = 100;
        }

        require(balanceOf(msg.sender) >= customRedeemValue, "Insufficient tokens");
        _burn(msg.sender, customRedeemValue);
    }

    function checkBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function eliminateTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Low balance");
        _burn(msg.sender, amount);
    }
}// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract UniqueToken is ERC20, ERC20Burnable {
    address private soleOwner;
    uint256 private customRedeemValue;

    constructor() ERC20("DEGEN", "DGN") {
        soleOwner = msg.sender;
    }

    modifier onlySoleOwner() {
        require(msg.sender == soleOwner, "Unauthorized access");
        _;
    }

    function addrestransferTokens(address _recipient, uint256 transferAmount) external {
        require(balanceOf(msg.sender) >= transferAmount, "Low balance");
        approve(msg.sender, transferAmount);
        transferFrom(msg.sender, _recipient, transferAmount);
    }

    function mint_Tokens(address _targetAddress, uint256 mintAmount) public onlySoleOwner {
        _mint(_targetAddress, mintAmount);
    }

    function availableItems() public pure returns (string memory) {
        return "1. mystry item = 10\n 2. Exclusive Skin = 25\n 3. Enigma Box = 50\n 4. Game Coin = 100\n 5. Unique T-shirt = 200";
    }

    function redeemMyChoice(uint256 chosenItem) external {
        require(chosenItem >= 1, "Invalid selection");

        if (chosenItem == 1) {
            customRedeemValue = 10;
        } else if (chosenItem == 2) {
            customRedeemValue = 25;
        } else if (chosenItem == 3) {
            customRedeemValue = 50;
        } else if (chosenItem == 4) {
            customRedeemValue = 75;
        } else if (chosenItem == 5) {
            customRedeemValue = 100;
        }

        require(balanceOf(msg.sender) >= customRedeemValue, "Insufficient tokens");
        _burn(msg.sender, customRedeemValue);
    }

    function checkBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function eliminateTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Low balance");
        _burn(msg.sender, amount);
    }
}
