#!/usr/bin/env bash
set -e

PROJECT_NAME="geth"

PLATFORMS=(
    "darwin amd64"
    "darwin arm64"
    "linux amd64"
    "linux arm64"
)

ROOT_DIR=$(pwd)
DIST_DIR="${ROOT_DIR}/dist"
BUILD_DIR="${DIST_DIR}/build"

# shellcheck disable=SC2145
echo "Building and packaging for platforms: ${PLATFORMS[@]}"

echo ${ROOT_DIR}

mkdir -p ${BUILD_DIR}

build_and_package() {

    cd ${ROOT_DIR}/cmd/geth
    local os="$1"
    local arch="$2"

    local binary_name="${PROJECT_NAME}-${os}-${arch}"
    local output_path="${ROOT_DIR}/dist/${os}_${arch}"
    local archive_name="geth-${binary_name}.tar.gz"

    mkdir -p "${output_path}"

    GOOS="${os}" GOARCH="${arch}" go build -o ${BUILD_DIR}/$binary_name

    mv ${BUILD_DIR}/$binary_name "${output_path}"/geth

    cd "${output_path}"

    tar -czvf "${DIST_DIR}/${archive_name}" geth
}

for platform in "${PLATFORMS[@]}"; do
    read -r os arch <<< "${platform}"
    build_and_package "${os}" "${arch}"
done

echo "Build and packaging completed."