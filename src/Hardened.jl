"""
Hardened.jl is a simple package to strictly check that Julia
is running with the correct flags for Hardened Compilation.
This is useful for security and safety crtical systems.

Currently this checks for:
    - Bounds checking
    - Global IEEE math mode

Bounds checking: overrides any `@inbounds` declarations
IEEE math mode: overrides any `@fastmath` declarations
"""
module Hardened

function __init__()
    check_bounds = Base.JLOptions().check_bounds != 1
    fast_math = Base.JLOptions().fast_math != 2
    err_msg = ""
    if check_bounds
        err_msg *= """Hardened Compilation: --check-bounds is not set to 'yes'. Run Julia with --check-bounds=yes
                          Mitigates:
                          - CWE-125: Out-of-bounds Read
                          - CWE-787: Out-of-bounds Write
                   """
    end
    if fast_math
        err_msg *= """Hardened Compilation: --math-mode is not set to 'ieee'. Run Julia with --math-mode=ieee
                          Mitigates:
                          - CWE-1339: Insufficient Precision or Accuracy of a Real Number
                   """
    end
    if !isempty(err_msg)
        error(err_msg)
    end
end



end
