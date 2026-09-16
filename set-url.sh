#!/usr/bin/env bash
# Rewrite the placeholder GitHub Pages URL across every file that carries it.
# Usage:  ./set-url.sh <github-owner> [repo-name]
# Example: ./set-url.sh quistberg philadelphia-gap
set -euo pipefail

OWNER="${1:?usage: ./set-url.sh <github-owner> [repo-name]}"
REPO="${2:-philadelphia-gap}"

NEW_SITE="https://${OWNER}.github.io/${REPO}/"
NEW_CODE="https://github.com/${OWNER}/${REPO}"

echo "Site URL -> ${NEW_SITE}"
echo "Repo URL -> ${NEW_CODE}"
echo

FILES=(index.html philadelphia-gap.html README.md CITATION.cff)
for f in "${FILES[@]}"; do
  [ -f "$f" ] || { echo "skip (absent): $f"; continue; }
  # repo-code URL first, so it is not clobbered by the site-URL rule
  perl -pi -e "s{https://github\.com/EXAMPLE/philadelphia-gap}{${NEW_CODE}}g" "$f"
  perl -pi -e "s{https://EXAMPLE\.github\.io/philadelphia-gap/?}{${NEW_SITE}}g" "$f"
  echo "rewrote: $f"
done

echo
REMAIN=$(grep -rl 'EXAMPLE' --exclude-dir=.git --exclude='set-url.sh' . 2>/dev/null || true)
if [ -n "$REMAIN" ]; then
  echo "FAIL — EXAMPLE still present in:"; echo "$REMAIN"; exit 1
fi
echo "OK — no EXAMPLE placeholders remain."
