#!/bin/bash
set -ex
cd "$(dirname "$0")"

version='0.13.1'
curl -L "https://github.com/drawpile/dpwebadmin/releases/download/$version/dpwebadmin-$version.tar.gz" | tar xz

rm -rf ../web-server/site/admin
mv "dpwebadmin-$version" ../web-server/site/admin

