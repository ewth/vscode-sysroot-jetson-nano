# vscode-sysroot-jetson-nano

This is intended to allow VS Code server to run on Jetson Nano 2GB. Targets `aarch64` architecture.

Forked from [ursetto/vscode-sysroot](https://github.com/ursetto/vscode-sysroot).

## Preamble

The Jetson Nano 2GB only *officially* supports Ubuntu 18.04. As VS Code Server can no longer be installed on Ubuntu 18.04, a bit of tinkering is required to get it to work.

**Note**: VS Code Server is still failing. This is a wip.

## Usage

Per [ursetto/vscode-sysroot](https://github.com/ursetto/vscode-sysroot) with some minor changes:

* Archive will be `vscode-sysroot-aarch64-linux-gnu.tgz` (instead of `x86_64`).
* Add `source ~/.vscode-server/sysroot.h` to both `~/.bashrc` and `~/.profile` on the Jetson Nano.
