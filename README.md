# Hardened

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://sjkelly.github.io/Hardened.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://sjkelly.github.io/Hardened.jl/dev)
[![Build Status](https://github.com/sjkelly/Hardened.jl/workflows/CI/badge.svg)](https://github.com/sjkelly/Hardened.jl/actions)



This package serves to enable hardened Julia code.
Using this package can avoid many common weaknesses in code.


https://cwe.mitre.org/top25/archive/2023/2023_top25_list.html

# CWE-125: Out-of-bounds Read

https://cwe.mitre.org/data/definitions/125.html

This package will error if bounds checking is not enabled

# CWE-787: Out-of-bounds Write

https://cwe.mitre.org/data/definitions/787.html


## CWE-190: Integer Overflow or Wraparound

https://cwe.mitre.org/data/definitions/190.html


Common arithmetic operators are converted to their counterparts in
`Base.Checked`, avoiding common overflow vulnerabilities and errors.


