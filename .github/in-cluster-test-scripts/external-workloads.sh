#!/bin/sh

set -x
set -e

# Run connectivity test
cilium connectivity test --debug --all-flows --collect-sysdump-on-failure

# Run performance test
cilium connectivity test --perf --perf-duration 1s
