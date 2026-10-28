#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_transfer info
PYTHONPATH=src python -m gbt_transfer check --payload '{}'
PYTHONPATH=src python -m gbt_transfer run   --payload '{}'
