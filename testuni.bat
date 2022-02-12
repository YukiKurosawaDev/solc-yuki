@echo off
rem npm install solc@0.5.16
rd /s /q uni
node yukicli ..\v2-core\contracts\UniswapV2Factory.sol --bin --abi --pretty-json -o uni --base-path ..\v2-core\contracts --include-path ..\v2-core\contracts
rem npm install solc@0.6.6
node yukicli ..\v2-periphery\contracts\UniswapV2Router02.sol --bin --abi --pretty-json -o uni --base-path ..\v2-periphery\contracts --include-path ..\v2-periphery\contracts --include-path ..\v2-core\contracts --include-path ..\v2-periphery\node_modules