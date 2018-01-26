# A simple script which executes the recommended instructions from doc/build-unix.md and then renames the resulting output to match Rarecoin specifications.
# Arguments to this script are passed to configure
# This script might not work correctly on all distributions, please report any problems to the Rarecoin devs directly (rarecoindev@gmail.com) or via the bitcointalk discussion thread.
# In future versions of Rarecoin, the name changes will be build into the same build system as Bitcoin Core, negating the need for this script...

# Please see doc/build-unix for required dependencies. This script will not work if dependencies are missing.

./autogen.sh
./configure
make
mv ./src/bitcoind ./src/rarecoind
mv ./src/bitcoin-tx ./src/rarecoin-tx
mv ./src/bitcoin-cli ./src/rarecoin-cli
mv ./src/qt/bitcoin-qt ./src/qt/rarecoin-qt
