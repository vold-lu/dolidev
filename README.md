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

Since Apple is BSD based some things are failing.

Therefore MacOs users will need to install gnu-{getopt,sed} using brew and then change the .env to point to the location:

```bash
brew install gnu-getopt gnu-sed
echo "GETOPT_CMD=$(brew --prefix gnu-getopt)/bin/getopt" >> .env
echo "SED_CMD=gsed" >> .env
```
