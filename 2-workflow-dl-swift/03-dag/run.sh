export TURBINE_LAUNCH_OPTIONS="--host localhost:16"
set -x

# Create the initial input file:
touch init.txt
# Run the workflow:
swift-t $* dag.swift
