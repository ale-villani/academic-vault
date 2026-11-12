#!/usr/bin/env bash
# ==============================================================================
# academic-vault sync script
# Synchronizes Mathematics and Engineering notes from local Obsidian vault
# into this standalone git repository and pushes updates to GitHub.
# ==============================================================================
set -euo pipefail

VAULT_DIR="/Users/Ale/Desktop/Appunti OBSIDIAN/Università"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> [1/3] Syncing Mathematics..."
rsync -av --delete \
    --exclude="Corpus Mathematicum.md" \
    --exclude=".DS_Store" \
    "$VAULT_DIR/Mathematics/" "$REPO_DIR/Mathematics/"

echo "==> [2/3] Syncing Engineering and Systems..."
rsync -av --delete \
    --exclude=".DS_Store" \
    "$VAULT_DIR/Engineering and Systems/" "$REPO_DIR/Engineering and Systems/"

echo "==> [3/3] Checking git working tree..."
cd "$REPO_DIR"
git add .

if git diff --staged --quiet; then
    echo "==> Vault is fully up to date. Zero changes to commit."
else
    COMMIT_MSG="sync(vault): $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG"
    echo "==> Pushing to origin main..."
    git push origin main
    echo "==> Successfully synchronized and pushed to GitHub."
fi
