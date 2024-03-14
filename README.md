# Hardened

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://sjkelly.github.io/Hardened.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://sjkelly.github.io/Hardened.jl/dev)
[![Build Status](https://github.com/sjkelly/Hardened.jl/workflows/CI/badge.svg)](https://github.com/sjkelly/Hardened.jl/actions)

Hardened.jl is a simple package to strictly check that Julia
is running with the correct flags for Hardened Compilation.
This is useful for security and safety crtical systems.

Currently this checks for:
    - Bounds checking
    - Global IEEE math mode

Bounds checking: overrides any `@inbounds` declarations
IEEE math mode: overrides any `@fastmath` declarations

## CWE-125: Out-of-bounds Read

<https://cwe.mitre.org/data/definitions/125.html>

This package will error if bounds checking is not enabled

## CWE-787: Out-of-bounds Write

<https://cwe.mitre.org/data/definitions/787.html>

## CWE-1339: Insufficient Precision or Accuracy of a Real Number

<https://cwe.mitre.org/data/definitions/1339.html>

## CWE-190: Integer Overflow or Wraparound

<https://cwe.mitre.org/data/definitions/190.html>

Common arithmetic operators are converted to their counterparts in
`Base.Checked`, avoiding common overflow vulnerabilities and errors.
