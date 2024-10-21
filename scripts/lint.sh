#!/usr/bin/env bash
set -x

# shellcheck disable=SC2046
base_dir=$(dirname $(dirname $0))

isort --sp "${base_dir}/pyproject.toml" --check .

black --config "${base_dir}/pyproject.toml" --check .

mypy --config-file "${base_dir}/pyproject.toml" src