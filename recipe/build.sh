#!/usr/bin/env bash
set -eux
pip install --no-deps .

ETC="$CONDA_PREFIX/etc/jupyter"
SERVER_CONFIG="$ETC/jupyter_notebook_config.d"
TREE_CONFIG="$ETC/nbconfig/tree.d"
mkdir -p "$SERVER_CONFIG"
mkdir -p "$TREE_CONFIG"
cp "$RECIPE_DIR/serverextension.json" "$SERVER_CONFIG/ipyparallel.json"
cp "$RECIPE_DIR/nbextension.json" "$TREE_CONFIG/ipyparallel.json"
jupyter nbextension install --sys-prefix --py ipyparallel
