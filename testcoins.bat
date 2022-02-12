@echo off
rd /s /q out
node yukicli ..\erc20-tokens\contracts\TestCoins_A.sol --bin --abi --pretty-json -o out --base-path ..\erc20-tokens\contracts --include-path ..\erc20-tokens\node_modules
copy out\StandardJSON.json out\CoinA.json
node yukicli ..\erc20-tokens\contracts\TestCoins_B.sol --bin --abi --pretty-json -o out --base-path ..\erc20-tokens\contracts --include-path ..\erc20-tokens\node_modules
copy out\StandardJSON.json out\CoinB.json
node yukicli ..\erc20-tokens\contracts\TestCoins_C.sol --bin --abi --pretty-json -o out --base-path ..\erc20-tokens\contracts --include-path ..\erc20-tokens\node_modules
copy out\StandardJSON.json out\CoinC.json
