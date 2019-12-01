#!/usr/bin/env bash
#
# This script builds the mock interface from source for unit test.

# Get the parent directory of where this script is.
SOURCE="${BASH_SOURCE[0]}"
while [[ -h "$SOURCE" ]] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"

# Change into that directory
cd "$DIR"

rm -rf test/mocks
mkdir -p test/mocks/tools
mockgen -package=mtools -source=pkg/tools/cal.go > test/mocks/tools/cal.go
