#!/usr/bin/env bash

set -euo pipefail

main() {
    HUGO_VERSION="0.150.0"

    # Install Hugo

    mkdir -p bin
    curl -LO "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.tar.gz"
    tar -xzf "hugo_${HUGO_VERSION}_linux-amd64.tar.gz" -C bin --strip-components=1
    rm -f "hugo_${HUGO_VERSION}_linux-amd64.tar.gz"
    export PATH="$PWD/bin:$PATH"

    # Verify installation
    if command -v hugo &> /dev/null
    then
        echo "Hugo installed successfully"
    else
        echo "Hugo installation failed"
    fi

    # Build the site
    hugo --gc --minify
}

main "$@"
