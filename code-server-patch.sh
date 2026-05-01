# Path to the dynamic linker in the sysroot (used for --set-interpreter option with patchelf)
VSCODE_SERVER_CUSTOM_GLIBC_LINKER=$HOME/.vscode-server/sysroot/lib/ld-linux-x86-64.so.2
# Path to the library locations in the sysroot (used as --set-rpath option with patchelf)
VSCODE_SERVER_CUSTOM_GLIBC_PATH=$HOME/.vscode-server/sysroot/usr/lib:$HOME/.vscode-server/sysroot/lib
# Path to the patchelf binary on the remote host
VSCODE_SERVER_PATCHELF_PATH=$HOME/.vscode-server/sysroot/usr/bin/patchelf


$VSCODE_SERVER_PATCHELF_PATH --set-interpreter $VSCODE_SERVER_CUSTOM_GLIBC_LINKER \
  --set-rpath $VSCODE_SERVER_CUSTOM_GLIBC_PATH \
  --force-rpath \
  --set-soname libstdc++.so.6 \
  --add-needed libstdc++.so.6 \
  --add-needed libgcc_s.so.1 \
  --add-needed libgcrypt.so.20 \
  --add-needed libgpg-error.so.0 \
  --add-needed libz.so.1 \
  --add-needed libm.so.6 \
  --add-needed libc.so.6 \
  code-server
