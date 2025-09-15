#!/usr/bin/env bash

set -euo pipefail

main() {
    HUGO_VERSION="0.150.0"

    # Install Hugo
    curl -LO "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.tar.gz"
    tar -xzf "hugo_${HUGO_VERSION}_linux-amd64.tar.gz"
    mv "hugo" /usr/local/bin/
    rm -f "hugo_${HUGO_VERSION}_linux-amd64.tar.gz"

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
