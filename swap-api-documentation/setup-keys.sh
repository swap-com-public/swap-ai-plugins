#!/usr/bin/env bash
# Swap Commerce API Key Setup
# Collects API keys using silent input (read -s) so keys never appear in the terminal,
# then writes them as `export` statements into ~/.swap-api.env. Claude sources this
# file inline before each API call, so raw key values never appear in the chat.

set -euo pipefail

ENV_FILE="${HOME}/.swap-api.env"

# ── helpers ──────────────────────────────────────────────────────────────────

bold()  { printf '\033[1m%s\033[0m' "$*"; }
green() { printf '\033[32m%s\033[0m' "$*"; }
dim()   { printf '\033[2m%s\033[0m' "$*"; }

mask() {
    local val="$1"
    if [[ ${#val} -le 4 ]]; then
        printf '%s****' "${val}"
    else
        printf '%s****' "${val:0:4}"
    fi
}

# Read a key silently. If the user enters `$VAR_NAME` we treat it as a reference
# to an existing env var: we record it specially (sentinel "__byo__:VAR_NAME")
# so it is not written to ~/.swap-api.env.
read_key() {
    local prompt="$1"
    local __result="$2"
    local value
    printf '%s: ' "$prompt"
    read -r -s value
    printf '\n'
    printf -v "$__result" '%s' "$value"
}

read_optional_key() {
    local prompt="$1"
    local __result="$2"
    local value
    printf '%s (press Enter to skip): ' "$prompt"
    read -r -s value
    printf '\n'
    printf -v "$__result" '%s' "$value"
}

# Collected during this run: parallel arrays of var name → value.
COLLECTED_NAMES=()
COLLECTED_VALUES=()
BYO_VARS=()  # vars the user referenced as $EXISTING (we don't write them)

collect() {
    local var_name="$1"
    local value="$2"
    if [[ -z "$value" ]]; then
        return
    fi
    if [[ "$value" == \$* ]]; then
        BYO_VARS+=("${value#\$} (mapped from $var_name)")
        return
    fi
    COLLECTED_NAMES+=("$var_name")
    COLLECTED_VALUES+=("$value")
}

# ── intro ─────────────────────────────────────────────────────────────────────

printf '\n'
bold 'Swap Commerce — API Key Setup'
printf '\n'
dim 'Keys are collected silently (no echo). They will never appear in this terminal.'
printf '\n\n'

# ── service selection ─────────────────────────────────────────────────────────

printf 'Which services do you want to configure?\n\n'
printf '  1) Global API        (prod, sandbox)\n'
printf '  2) Protect API       (prod)\n'
printf '  3) Returns API       (prod)\n'
printf '  4) Shipping API      (prod, sandbox)\n'
printf '  5) TLC API           (prod, sandbox)\n'
printf '  6) Agentic Storefront (dev, sandbox, prod)\n'
printf '  a) All of the above\n'
printf '\n'
printf 'Enter numbers separated by spaces, or "a" for all: '
read -r selection
printf '\n'

configure_global=false
configure_protect=false
configure_returns=false
configure_shipping=false
configure_tlc=false
configure_storefront=false

if [[ "$selection" == "a" || "$selection" == "all" ]]; then
    configure_global=true
    configure_protect=true
    configure_returns=true
    configure_shipping=true
    configure_tlc=true
    configure_storefront=true
else
    for token in $selection; do
        case "$token" in
            1) configure_global=true ;;
            2) configure_protect=true ;;
            3) configure_returns=true ;;
            4) configure_shipping=true ;;
            5) configure_tlc=true ;;
            6) configure_storefront=true ;;
            *) printf 'Unknown option "%s" — skipping.\n' "$token" ;;
        esac
    done
fi

# ── collect keys ──────────────────────────────────────────────────────────────

if $configure_global; then
    printf '── %s ──\n' "$(bold 'Global API')"
    read_key 'Global API key (prod)'    VAL
    collect SWAP_GLOBAL_PROD_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod: %s\n' "$(mask "$VAL")"
    read_key 'Global API key (sandbox)' VAL
    collect SWAP_GLOBAL_SANDBOX_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  sandbox: %s\n' "$(mask "$VAL")"
    printf '\n'
fi

if $configure_protect; then
    printf '── %s ──\n' "$(bold 'Protect API')"
    read_key 'Protect API key (prod)' VAL
    collect SWAP_PROTECT_PROD_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod: %s\n' "$(mask "$VAL")"
    printf '\n'
fi

if $configure_returns; then
    printf '── %s ──\n' "$(bold 'Returns API')"
    read_key 'Returns API key (prod)' VAL
    collect SWAP_RETURNS_PROD_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod: %s\n' "$(mask "$VAL")"
    printf '\n'
fi

if $configure_shipping; then
    printf '── %s ──\n' "$(bold 'Shipping API')"
    read_key 'Shipping API key (prod)'    VAL
    collect SWAP_SHIPPING_PROD_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod: %s\n' "$(mask "$VAL")"
    read_key 'Shipping API key (sandbox)' VAL
    collect SWAP_SHIPPING_SANDBOX_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  sandbox: %s\n' "$(mask "$VAL")"
    printf '\n'
fi

if $configure_tlc; then
    printf '── %s ──\n' "$(bold 'TLC API')"
    read_key 'TLC API key (prod)'    VAL
    collect SWAP_TLC_PROD_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod: %s\n' "$(mask "$VAL")"
    read_key 'TLC API key (sandbox)' VAL
    collect SWAP_TLC_SANDBOX_API_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  sandbox: %s\n' "$(mask "$VAL")"
    printf '\n'
fi

if $configure_storefront; then
    printf '── %s ──\n' "$(bold 'Agentic Storefront')"
    printf 'This service uses a Bearer token. You may also have an optional public key (used for checkout/session endpoints).\n\n'
    read_key 'Bearer token (prod)'          VAL
    collect SWAP_STOREFRONT_PROD_BEARER "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod bearer: %s\n' "$(mask "$VAL")"
    read_key 'Bearer token (sandbox)'       VAL
    collect SWAP_STOREFRONT_SANDBOX_BEARER "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  sandbox bearer: %s\n' "$(mask "$VAL")"
    read_key 'Bearer token (dev)'           VAL
    collect SWAP_STOREFRONT_DEV_BEARER "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  dev bearer: %s\n' "$(mask "$VAL")"
    read_optional_key 'Public key (prod, optional)'  VAL
    collect SWAP_STOREFRONT_PROD_PUBLIC_KEY "$VAL"
    [[ -n "$VAL" && "$VAL" != \$* ]] && printf '  prod public-key: %s\n' "$(mask "$VAL")"
    printf '\n'
fi

# ── write env file ────────────────────────────────────────────────────────────

# Move new (name, value) pairs through a NUL-separated temp file so values
# containing shell-special characters survive intact. Python merges them into
# any existing ~/.swap-api.env, preserving vars not touched by this run.
DATA_FILE=$(mktemp -t swap-setup.XXXXXX)
chmod 600 "$DATA_FILE"
cleanup() { rm -f "$DATA_FILE"; }
trap cleanup EXIT

if [[ ${#COLLECTED_NAMES[@]} -gt 0 ]]; then
    for i in "${!COLLECTED_NAMES[@]}"; do
        printf '%s\0%s\0' "${COLLECTED_NAMES[$i]}" "${COLLECTED_VALUES[$i]}"
    done > "$DATA_FILE"
fi

python3 - "$ENV_FILE" "$DATA_FILE" <<'PYEOF'
import os, re, sys

env_path, data_path = sys.argv[1], sys.argv[2]

new_vars = {}
if os.path.getsize(data_path) > 0:
    with open(data_path, 'rb') as f:
        parts = f.read().split(b'\x00')
    if parts and parts[-1] == b'':
        parts.pop()
    pairs = list(zip(parts[::2], parts[1::2]))
    new_vars = {n.decode('utf-8'): v.decode('utf-8') for n, v in pairs}

# Parse existing file (if any). Recognize:
#   export NAME='single-quoted, '\''-escaped value'
LINE_RE = re.compile(r"^export\s+([A-Za-z_][A-Za-z0-9_]*)='(.*)'\s*$")

existing = {}
if os.path.isfile(env_path):
    with open(env_path) as f:
        for line in f:
            m = LINE_RE.match(line.rstrip('\n'))
            if m:
                name, escaped = m.group(1), m.group(2)
                existing[name] = escaped.replace("'\\''", "'")

merged = {**existing, **new_vars}

def shell_quote(value: str) -> str:
    return "'" + value.replace("'", "'\\''") + "'"

out_lines = [
    "# Swap Commerce API keys — DO NOT COMMIT.",
    "# Sourced inline by Claude during API calls so raw values never appear in chat.",
]
for name in sorted(merged):
    out_lines.append(f"export {name}={shell_quote(merged[name])}")

with open(env_path, 'w') as f:
    f.write('\n'.join(out_lines) + '\n')
PYEOF

chmod 600 "$ENV_FILE"

# ── done ─────────────────────────────────────────────────────────────────────

printf '%s\n' "$(green '✓ Setup complete.')"
printf '  Keys stored in %s (permissions: 600).\n' "$ENV_FILE"
printf '  Nothing else on your system was modified.\n'

if [[ ${#BYO_VARS[@]} -gt 0 ]]; then
    printf '\n%s\n' "$(dim 'Existing env vars you referenced (left untouched):')"
    for v in "${BYO_VARS[@]}"; do
        printf '  - %s\n' "$v"
    done
fi

printf '\nReturn to Claude — it will source this file inline for each API call.\n\n'
