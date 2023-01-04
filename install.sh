#!/bin/sh
set -e

CHANNEL=${CHANNEL:-"release"}

curl -fsSL https://install.julialang.org | sh -s -- --yes --default-channel "${VERSION}"
