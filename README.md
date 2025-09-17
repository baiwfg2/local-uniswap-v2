## local uniswap-v2 (for learning)

This repo integrates uniswap v2-core and uniswap v2-periphery together, making it a complete foundry project. With this, we can create test cases against its implementation conveniently. Maybe we should make one step further, creating the frontend to interact with local deployed contracts.

## Gettings Started

build: `forge build`

test: `forge test -vvvv`

## Issues

1. If `unchecked_cheatcode_artifacts = true` not given, then `forge script script/UniswapDeployer.s.sol` will report error:

```
Traces:
  [503199] → new UniswapDeployer@0x9f7cF1d1F558E57ef88a59ac3D47214eF25B6A06
    └─ ← [Return] 2401 bytes of code

  [3612] UniswapDeployer::run()
    ├─ [0] VM::getCode("UniswapV2Factory.sol:UniswapV2Factory") [staticcall]
    │   └─ ← [Revert] vm.getCode: no matching artifact found
    └─ ← [Revert] vm.getCode: no matching artifact found
```

If given, it seems that deploying process is OK on local EVM.
```
$ forge script script/UniswapDeployer.s.sol
[⠊] Compiling...
No files changed, compilation skipped
Script ran successfully.
Gas used: 285411
```

## References

https://www.youtube.com/watch?v=izz4xYKNZQM

https://github.com/aurelien-cuvelier/local-uniswap-v2-foundry