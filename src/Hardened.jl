module Hardened

using Base


function __init__()
    if Base.JLOptions().check_bounds != 1
        error("Hardened Compilation: --check-bounds in not set to 'yes' run Julia with --check-bounds=yes")
    end
end

end
