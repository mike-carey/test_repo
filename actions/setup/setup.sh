#!/usr/bin/env bash

DEFAULT_NODE_VERSION=16.13.1

[ -n "$NODE_VERSION" ] || {
  if [ -f .node-version ]; then
    NODE_VERSION="$(< .node-version)"
  else
    NODE_VERSION="$DEFAULT_NODE_VERSION"
  fi
}

echo "::set-output name=node_version::$NODE_VERSION"
