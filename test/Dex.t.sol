//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {DEX} from "../src/Dex.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TestDEX is Test {
    DEX public dex;

    address public USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address public XRP = 0x628F76eAB0C1298F7a24d337bBbF1ef8A1Ea6A24;

    function setUp() public {
        // Deploy the DEX contract
        dex = new DEX(USDT, XRP);
    }

    function test_getExchangeRateAB() public {
        //  dex.getExchangeRate();
        dex.totalLiquidityA();
    }
}

contract MockERC20 is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}

// contract DEXTest is Test {
//     // MockERC20 private tokenA;
//     // MockERC20 private tokenB;
//     DEX private dex;

//     address private user1 = address(0x1);
//     address private user2 = address(0x2);
//      address public USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
//     address public XRP = 0x628F76eAB0C1298F7a24d337bBbF1ef8A1Ea6A24;

//     function setUp() public {
//         // tokenA = new MockERC20("TokenA", "TKA");
//         // tokenB = new MockERC20("TokenB", "TKB");

//         dex = new DEX();
//         dex.tokenA();
//         dex.tokenB();

//         // Mint tokens for testing
//         tokenA.mint(user1, 1000 * 1e18);
//         tokenB.mint(user2, 2000 * 1e18);
//     }

//     function testGetExchangeRateABNonZeroLiquidity() public {
//         // Set initial liquidity values
//         vm.prank(user1);
//         tokenA.transfer(address(dex), 1000 * 1e18);
//         vm.prank(user2);
//         tokenB.transfer(address(dex), 2000 * 1e18);

//         dex.setLiquidityA(1000 * 1e18); // Assuming you have a function to set liquidity
//         dex.setLiquidityB(2000 * 1e18); // Assuming you have a function to set liquidity

//         uint expectedRate = (2000 * 1e18 * 1e18) / (1000 * 1e18);
//         uint actualRate = dex.getExchangeRateAB();

//         assertEq(actualRate, expectedRate, "Exchange rate should be 2 * 1e18");
//     }

//     function testGetExchangeRateABZeroLiquidityA() public {
//         // Set liquidity values
//         dex.setLiquidityA(0);
//         dex.setLiquidityB(2000 * 1e18); // Assuming you have a function to set liquidity

//         // We expect the transaction to revert with "No liquidity for TokenA"
//         vm.expectRevert("No liquidity for TokenA");
//         dex.getExchangeRateAB();
//     }

//     function testGetExchangeRateABZeroLiquidityB() public {
//         // Set liquidity values
//         dex.setLiquidityA(1000 * 1e18); // Assuming you have a function to set liquidity
//         dex.setLiquidityB(0);

//         // We expect the transaction to revert with "No liquidity for TokenB"
//         vm.expectRevert("No liquidity for TokenB");
//         dex.getExchangeRateAB();
//     }
// }
