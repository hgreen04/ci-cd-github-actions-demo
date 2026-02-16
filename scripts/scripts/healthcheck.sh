#!/usr/bin/env bash
set -euo pipefail

echo "Starting basic system-style checks..."

# Simulated checks (CI-friendly)
echo "Repo: ${GITHUB_REPOSITORY:-local}"
echo "Branch/Ref: ${GITHUB_REF:-local}"
echo "Runner: ${RUNNER_OS:-local}"

# Example "checks"
if [[ -f README.md ]]; then
  echo "✅ README.md exists"
else
  echo "❌ README.md missing" >&2
  exit 1
fi

if [[ -d .git ]]; then
  echo "ℹ️ Running locally"
else
  echo "ℹ️ Running in CI"
fi

echo "All checks passed."
