#!/usr/bin/env bash

# Collects async profiler data for a given process.
# Usage: collect_async_profiler.sh <output_dir>

OUTPUT_DIR=$1
OUTPUT_FILE="$(hostname -i)-$(date -d "today" +"%Y%m%d_%H%M")-profile.html"
PID="$(cat /var/run/dse/dse.pid)"

profiler.sh -d 300 -f "$OUTPUT_DIR/$OUTPUT_FILE" "$PID"
