Rarecoin is a fork of Bitcoin Core release 0.15.1

License
-------

Rarecoin is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Building
--------

Rarecoin can be built by running one of the 3 build shell scripts. One is for Linux, one for win32, and one for win64. These build scripts are very simple and just execute the same instructions as the Bitcoin documentation recommends for building Bitcoin Core 0.15.1. Be sure to check that you have the requrired dependencies for building, check doc/build-unix for further instructions. The build process is the same as for Bitcoin Core 0.15.1.

Important note on building for Windows on Ubuntu 17.04 or later
--------

If you're building on Ubuntu 17.04 or later, run these two commands, selecting the 'posix' variant for both, to work around issues with mingw-w64. See issue [8732](https://github.com/bitcoin/bitcoin/issues/8732) for more information.
```
sudo update-alternatives --config x86_64-w64-mingw32-g++
sudo update-alternatives --config x86_64-w64-mingw32-gcc
```
