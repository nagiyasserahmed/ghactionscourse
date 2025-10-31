#!/bin/bash

# Exit immediately if any command fails
set -e

# Run the app and capture its output
output=$(node src/app.js)

# Expected output
expected="Hello, World."

# Compare actual output with expected output
if [ "$output" == "$expected" ]; then
  echo "✅ Test passed: Output correct."
else
  echo "❌ Test failed: Expected '$expected' but got '$output'."
  exit 1
fi
