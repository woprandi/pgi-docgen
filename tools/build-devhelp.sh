#!/bin/sh
# Copyright 2013 Christoph Reiter
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.

# Example usage: "./build.sh Atk-1.0"
# Result can be found in "_docs/_build_devhelp"

set -e

./pgidocgen.py create _docs "$@"
./pgidocgen.py build --devhelp _docs _docs/_build_devhelp
