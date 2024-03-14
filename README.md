# Hardened

Hardened.jl is a simple package to strictly check that Julia
is running with the correct flags for Hardened Compilation.
This is useful for security and safety crtical systems.

Currently this checks for:
    - Bounds checking
    - Global IEEE math mode
    - Function overwrite

Bounds checking: overrides any `@inbounds` declarations
IEEE math mode: overrides any `@fastmath` declarations
Function overwrite: insures against resource injection and ensures testing integrity

## Covered CWEs

### CWE-125: Out-of-bounds Read

<https://cwe.mitre.org/data/definitions/125.html>

### CWE-787: Out-of-bounds Write

<https://cwe.mitre.org/data/definitions/787.html>

### CWE-1339: Insufficient Precision or Accuracy of a Real Number

<https://cwe.mitre.org/data/definitions/1339.html>

### CWE-99: Improper Control of Resource Identifiers ('Resource Injection')

<https://cwe.mitre.org/data/definitions/99.html>