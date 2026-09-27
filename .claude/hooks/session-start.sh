#!/bin/bash
# Installs the .NET 10 SDK in Claude Code on the web sessions so Claude can build and test.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Ubuntu's own package, because the proxy blocks Microsoft's dotnet-install.sh download host.
if ! dotnet --list-sdks 2>/dev/null | grep -q '^10\.'; then
  SUDO=""
  if [ "$(id -u)" -ne 0 ]; then SUDO="sudo"; fi
  export DEBIAN_FRONTEND=noninteractive
  $SUDO apt-get update -q >&2
  $SUDO apt-get install -y -q dotnet-sdk-10.0 >&2
fi

if [ -n "${CLAUDE_ENV_FILE:-}" ]; then
  {
    echo 'export DOTNET_CLI_TELEMETRY_OPTOUT=1'
    echo 'export DOTNET_NOLOGO=1'
  } >> "$CLAUDE_ENV_FILE"
fi

cd "$CLAUDE_PROJECT_DIR"
dotnet restore >&2
