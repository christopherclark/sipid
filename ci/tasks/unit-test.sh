#!/usr/bin/env bash

set -e

export GOPATH="${PWD}/gopath"
export PATH="${GOPATH}/bin:${PATH}"

go get github.com/onsi/ginkgo
go get github.com/onsi/gomega/...
go install github.com/onsi/ginkgo/ginkgo

cd gopath/src/github.com/cloudfoundry/sipid

ginkgo -r -race -p -randomizeAllSpecs -randomizeSuites -failOnPending .