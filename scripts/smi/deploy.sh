#!/bin/sh

set -e

if ! type "kubectl" > /dev/null 2>&1; then
  printf "ERROR\tgrep cannot be found\n"
  exit 1;
fi

if ! kubectl apply -f ./scripts/smi/smi.yaml; then
	printf "ERROR\tUnable to deploy\n"
	exit 1
fi
