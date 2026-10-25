#!/usr/bin/env bash
# Follow-Up Master: copies the skill into your Claude Code skills folder.
# Usage, from inside this folder:  bash install.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST_ROOT="${HOME}/.claude/skills"
mkdir -p "$DEST_ROOT"
src="$ROOT/follow-up-master"
[ -f "$src/SKILL.md" ] || { echo "Can't find the skill. Run this from inside the Follow-Up Master folder." >&2; exit 1; }
dest="$DEST_ROOT/follow-up-master"
if [ -e "$dest" ]; then
  read -r -p "There's already a follow-up-master skill at $dest. Replace it? [y/N] " ok
  case "$ok" in y|Y) rm -rf "$dest" ;; *) echo "Left it as it is."; exit 0 ;; esac
fi
cp -R "$src" "$dest"
echo "Installed follow-up-master to $dest"
echo "Start a new Claude Code session, then type /follow-up-master and paste the thread."
