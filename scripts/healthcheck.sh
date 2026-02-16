#!/usr/bin/env bash
set -euo pipefail

echo "Starting basic system-style checks..."

echo "Repo: ${GITHUB_REPOSITORY:-local}"
echo "Branch/Ref: ${GITHUB_REF:-local}"
echo "Runner: ${RUNNER_OS:-local}"

if [[ -f README.md ]]; then
  echo "README.md exists"
else
  echo "README.md missing" >&2
  exit 1
fi

echo "All checks passed."
