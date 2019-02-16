# NSWA Ranga Command-Line Client.

## Install for Unix-like systems

```
$ git clone https://github.com/glider0/ranga-client.git
$ cd ranga-client
$ sudo ./install.sh
```

`install.sh` will automatically check the system dependencies required by command line tool. If you are using Debian GNU/Linux, `install.sh` will also try to install them automatically via the `apt` command. Otherwise, you will need to manually install the missing dependent software.

`ranga-cli` will be installed under `/usr/local/bin`, please make sure `/usr/local/bin` is in your user's `PATH` environment variable.

ranga-cli's bash-completion script will be installed under `/usr/share/bash-completion/completions/`. Help you to auto-complete the command.

If you want to use experimental user installation options, run `./install.sh --user`. Command line tool will be installed to the current user instead of the system, please confirm `${HOME}/.local/bin/` in you In the user's `PATH` environment variable. The bash-completion feature is not available for user installation.

## Install for Windows

Download our Windows version tarball `ranga-client-windows.7z` from [RELEASE](https://github.com/glider0/ranga-client/releases) page.

Unpack this archive, and run `setup.bat` to use it.

The Windows version is experimental. If you have problems, try installing the UNIX version of ranga-client in msys2 or cygwin on Windows.

The windows version of this software uses msys2, the binary and script programs for msys2 are included in the distribution package. For more information about msys2, please navigate to https://www.msys2.org/

## Usage

Please see [Ranga end-user manual](https://glider0.github.io/doc.zh/euman.html) (Chinese version)

## Contribution

`ranga-cli` - The client which written by Bash.

`bash-completion/ranga-cli-completion.bash` - The bash-completion script for client

What you can do?

- Welcome to fixup issues in `ranga-cli`, `install.sh` and `ranga-cli-completion.bash`.

- Welcome to optimize performance for the program.

- Welcome to port ranga-cli to other systems with fixes.

- Welcome to add features for the program.

What should you pay attention to?

- When you add a sub-command for `ranga-cli`, you need write document (in Chinese) in Markdown and update the `ranga-cli-completion.bash`.

- Please open a Pull-requst or send the `.patch` file by open an Issue.

- You need to explain the purpose of your patch. For example, what problems have you encountered and how you solved it? What is the purpose of your added functionality?

## Copyright and warranty

Copyright (C) 2019 NSWA Ranga Maintainers.

License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html> **With additional license grant original maintainers unlimited rights for this code and the derived codes which are contributed to upstream.**

This is free software; you are free to change and redistribute it.
**There is NO WARRANTY, to the extent permitted by law.**
**If you have purchased a commercial license for the Ranga system,**
**This program which is published from original version has same warranty.**
