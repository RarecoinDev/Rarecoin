# Simple build scrpit which builds the 64-bit version of Rarecoin for Windows.
# Running this script might require root privileges
# This script might not work correctly on all distributions, please report any problems to the Rarecoin devs directly (rarecoindev@gmail.com) or via the bitcointalk discussion thread.
# In future versions of Rarecoin, the name changes will be build into the same build system as Bitcoin Core, negating the need for this script...

# Please see doc/build-windows for required dependencies. This script will not work if dependencies are missing.

PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g') # strip out problematic Windows %PATH% imported var
cd depends
make HOST=x86_64-w64-mingw32
cd ..
./autogen.sh
CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/
make 

mv ./src/bitcoind.exe ./src/rarecoind.exe
mv ./src/bitcoin-tx.exe ./src/rarecoin-tx.exe
mv ./src/bitcoin-cli.exe ./src/rarecoin-cli.exe
mv ./src/qt/bitcoin-qt.exe ./src/qt/rarecoin-qt.exe
