// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandling {
    uint public coinbalance = 0;
    uint public quotient = 0;

    function RequireCheck(uint score, uint coins) public payable {
        coinbalance += coins;
        require(score >= 100, "Score is less than 100. Transaction not possible");
    }

    error ThrowError(string);
    function RevertCheck(uint score, uint coins) public payable {
        coinbalance += coins;
        if (score < 100)
            revert ThrowError("Score is less than 100. Transaction not possible");
    }

    function AssertCheck(uint a, uint b) public {
        assert(b != 0);
        quotient = a / b;
    }
}