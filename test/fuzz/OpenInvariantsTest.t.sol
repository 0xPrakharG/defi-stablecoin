// SPDX-License-Identifier: MIT

// // Have out invariants aka properties

// // What are our invariants?

// // 1. The total supply of DSC should be less than the total value of collateral
// // 2. Getter view functions should never revert <- evergreen invariant

pragma solidity ^0.8.18;

// import {console} from "forge-std/console.sol";
// import {Test} from "forge-std/Test.sol";
// import {StdInvariant} from "forge-std/StdInvariant.sol";
// import {DeployDSC} from "../../script/DeployDSC.s.sol";
// import {DSCEngine} from "../../src/DSCEngine.sol";
// import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
// import {HelperConfig} from "script/HelperConfig.s.sol";
// import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// contract OpenInvariantsTests is StdInvariant, Test {
//     DeployDSC deployer;
//     DSCEngine dsce;
//     DecentralizedStableCoin dsc;
//     HelperConfig config;

//     address weth;
//     address wbtc;

//     function setUp() external {
//         deployer = new DeployDSC();
//         (dsc, dsce, config) = deployer.run();

//         console.log("DSCEngine address: %s", address(dsce));
//         console.log("DecentralizedStableCoin address: %s", address(dsc));
//         console.log("HelperConfig address: %s", address(config));

//         (,, weth, wbtc,) = config.activeNetworkConfig();

//         console.log("weth: %s", weth);
//         console.log("wbtc: %s", wbtc);

//         targetContract(address(dsce));
//     }

//     function invariant_protocolMustHaveMoreValueThanTotalSupply() public view {
//         // get the value of all the collateral in the protocol
//         // compare it to all the debt(dsc)

//         uint256 totalSupply = dsc.totalSupply();
//         uint256 totalWethDeposited = IERC20(weth).balanceOf(address(dsce));
//         uint256 totalWbtcDeposited = IERC20(wbtc).balanceOf(address(dsce));

//         uint256 wethValue = dsce.getUsdValue(weth, totalWethDeposited);
//         uint256 wbtcValue = dsce.getUsdValue(wbtc, totalWbtcDeposited);

//         console.log("weth value: %s", wethValue);
//         console.log("wbtc value: %s", wbtcValue);
//         console.log("total supply: %s", totalSupply);

//         assert(wethValue + wbtcValue >= totalSupply);
//     }
// }
