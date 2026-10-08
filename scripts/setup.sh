#!/usr/bin/env bash
set -euo pipefail

echo "Setting up the project..."
python -m venv .venv 2>/dev/null || true
# shellcheck disable=SC1091
[ -f .venv/bin/activate ] && source .venv/bin/activate || true

echo "Installing development dependencies..."
pip install -r requirements.txt

echo "Running smoke test..."
python tests/smoke_test.py

echo "Done."
