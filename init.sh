#!/usr/bin/env bash
set -euo pipefail

# Get the directory of this script (assume it's the template dir)
TEMPLATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ $# -gt 0 ]]; then
  echo "Usage: bootstrap-marketing-site (run in target directory)" >&2
  exit 1
fi

TARGET="$PWD"

# Get repo name from origin remote (if available), fallback to target basename
if git -C "$TEMPLATE_DIR" rev-parse --is-inside-work-tree &>/dev/null; then
  ORIGIN_URL=$(git -C "$TEMPLATE_DIR" remote get-url origin 2>/dev/null || true)
  if [[ -n "$ORIGIN_URL" ]]; then
    # Extract repo name from URL (handles .git at end)
    REPO_NAME=$(basename "${ORIGIN_URL%.git}")
  else
    REPO_NAME="$(basename "$TARGET")"
  fi
else
  REPO_NAME="$(basename "$TARGET")"
fi

PROJECT_NAME="$REPO_NAME"
PACKAGE_NAME=$(printf '%s' "$PROJECT_NAME" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9._-]+/-/g; s/^[._-]+//; s/[._-]+$//; s/[.]+/-/g')

if [[ -z "$PACKAGE_NAME" ]]; then
  echo "Could not derive a valid package name from '$PROJECT_NAME'." >&2
  exit 1
fi

# Replace the explicit scaffold placeholders without searching binaries or .git.
PROJECT_NAME_SED=${PROJECT_NAME//&/\\&}
PROJECT_NAME_SED=${PROJECT_NAME_SED//|/\\|}
PACKAGE_NAME_SED=${PACKAGE_NAME//&/\\&}
PACKAGE_NAME_SED=${PACKAGE_NAME_SED//|/\\|}
sed -i "s|<site name>|$PROJECT_NAME_SED|g" \
  "$TARGET/.devcontainer/devcontainer.json" \
  "$TARGET/src/pages/index.astro"
sed -i "s|\"name\": \"astro-temp\"|\"name\": \"$PACKAGE_NAME_SED\"|" \
  "$TARGET/package.json"

cat > "$TARGET/README.md" <<EOF
# $PROJECT_NAME

An Astro website.

## Develop

\`\`\`sh
pnpm install
pnpm dev
pnpm build
pnpm preview
\`\`\`

## Deploy

Deployment runs from \`.github/workflows/cd.yml\` on pushes to \`main\`. See
the template documentation or workflow for target-specific setup. Set the
\`DEPLOY_TARGET\` repository variable to \`cf_pages\` or \`gh_pages\`.

Cloudflare Pages requires the \`CLOUDFLARE_ACCOUNT_ID\`,
\`CLOUDFLARE_PROJECT_ID\`, and \`CLOUDFLARE_PAGES_API_TOKEN\` repository
secrets.
EOF

# A real favicon is created when the design is finalized.
rm -f "$TARGET/public/favicon.ico" "$TARGET/public/favicon.svg"

# This is a one-shot scaffold initializer.
rm -f "$TARGET/$(basename "$0")"

# Git initial commit
git -C "$TARGET" add -A
git -C "$TARGET" commit -q -m "Initial scaffold"
