#!/usr/bin/env bash
set -euo pipefail

WORKSPACE=$PWD

# frontend setup
cd ${WORKSPACE}/frontend
mise trust -a
mise install

# backend setup
cd ${WORKSPACE}/backend
mise trust -a
mise install