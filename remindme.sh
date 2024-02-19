#!/bin/bash

set -e

msg="$1"
at_arg="$2"

echo "zenity --warning --text '${msg}'" | at ${at_arg}
