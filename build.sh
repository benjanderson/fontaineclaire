main() {
    HUGO_VERSION="0.150.0"

    # Install Hugo
    curl -LO https://github.com/goharbor/harbor/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
    tar -xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
    mv hugo /usr/local/bin/
    rm -f hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

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

set -euo pipefail
main "$@"
