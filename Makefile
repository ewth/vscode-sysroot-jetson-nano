all: sysroot-aarch64

# Build a docker image which contains the final sysroot, then copy the sysroot tarball into toolchain/.

sysroot-aarch64:
	mkdir -p toolchain
	docker build -t vscode-sysroot --target sysroot .
	docker run -it --rm -v $$PWD/toolchain:/out vscode-sysroot cp vscode-sysroot-aarch64-linux-gnu.tgz /out/
	ls -l toolchain

clean:
	rm -rf toolchain

.PHONY: sysroot-aarch64 clean
