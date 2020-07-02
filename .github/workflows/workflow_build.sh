name: WORKFLOW_BUILD
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    env:
      PACKAGE_ARCH = apollolake
      DSM_VER = 6.2
    steps:
    - uses: actions/checkout@master
    - run: mkdir -p Wireguard
    - run: pkgscripts-ng/PkgCreate.py -p $PACKAGE_ARCH -v $DSM_VER -S --build-opt=-J --print-log -c WireGuard
