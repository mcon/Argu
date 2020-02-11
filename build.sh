#!/usr/bin/env bash

set -eu
cd `dirname $0`

dotnet tool restore
dotnet paket restore
cat .paket/load/netstandard2.0/Build/build.group.fsx
dotnet fake run build.fsx "$@"