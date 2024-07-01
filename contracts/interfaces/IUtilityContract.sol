// SPDX-License-Identifier: MIT
pragma solidity =0.8.20;


interface IUtilityContract {
    function validateMarginStatus(
        address user,
        address token
    ) external view returns (bool);

    function calculateTradeLiabilityAddtions(
        address[2] memory pair,
        address[][2] memory participants,
        uint256[][2] memory trade_amounts
    ) external returns (uint256[] memory, uint256[] memory);

    function returnPending(
        address user,
        address token
    ) external view returns (uint256);

    function calculateAmountToAddToLiabilities(
        address user,
        address token,
        uint256 amount
    ) external returns (uint256);

    function returnAssets(
        address user,
        address token
    ) external view returns (uint256);

    function returnBulkAssets(
        address[] memory users,
        address token
    ) external view returns (uint256);

    function returnliabilities(
        address user,
        address token
    ) external view returns (uint256);

    function returnMaintenanceRequirementForTrade(
        address token,
        uint256 amount
    ) external view returns (uint256);

    function processMargin(
        address[2] memory pair,
        address[][2] memory participants,
        uint256[][2] memory trade_amounts
    ) external returns (bool);

    function fetchBorrowProportionList(
        uint256 dimension,
        uint256 startingIndex,
        uint256 endingIndex,
        address token
    ) external view returns (uint256[] memory);

    function fetchRatesList(
        uint256 dimension,
        uint256 startingIndex,
        uint256 endingIndex,
        address token
    ) external view returns (uint256[] memory);

    function chargeStaticLiabilityInterest(
        address token,
        uint256 index
    ) external view returns (uint256);

    function validateTradeAmounts(
        uint256[][2] memory trade_amounts
    ) external view returns (bool);

    function debitAssetInterest(address user, address token) external;

    function returnEarningProfit(address user, address token) external view returns(uint256);
}
