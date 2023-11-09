using Hardened
using Documenter

DocMeta.setdocmeta!(Hardened, :DocTestSetup, :(using Hardened); recursive=true)

makedocs(;
    modules=[Hardened],
    authors="Steve Kelly <kd2cca@gmail.com> and contributors",
    repo="https://github.com/sjkelly/Hardened.jl/blob/{commit}{path}#{line}",
    sitename="Hardened.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://sjkelly.github.io/Hardened.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/sjkelly/Hardened.jl",
)
