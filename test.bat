@echo off
rd /s /q out
node yukicli ..\erc20-tokens\contracts\YukiNetworkToken.sol --bin --abi -o out --base-path ..\erc20-tokens\contracts --include-path ..\erc20-tokens\node_modules