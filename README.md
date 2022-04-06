# dolidev

Easily setup a local dev environment for [Dolibarr](https://www.dolibarr.org/)

## How to use it?

Easy-peasy:

```bash
git clone https://github.com/vold-lu/dolidev.git
cd dolidev

./dolidev up --version=15.0 --seed # Spawn a Dolibarr instance with optional given version, and optionally seed the database
./dolidev down # Stop the Dolibarr instance
./dolidev rm # Remove the Dolibarr instance (wipe files on disk)
```

### On MacOs

Since, for obscure reason, Apple has preferred using the BSD getopt instead of the GNU one, the argument parsing is failing.

Therefore MacOs users will need to install gnu-getopt using brew and then change the .env to point to the gnu-getopt location:

```bash
brew install gnu-getopt
echo "GETOPT_CMD=$(brew --prefix gnu-getopt)/bin/getopt" >> .env
```