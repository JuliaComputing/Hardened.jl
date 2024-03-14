using Test

@testset "Hardened.jl" begin
    julia_cmd = Base.julia_cmd()
    @test success(`$julia_cmd --check-bounds=yes --math-mode=ieee -e "using Hardened"`)
    @test_throws ProcessFailedException run(`$julia_cmd -e "using Hardened"`)
    @test_throws ProcessFailedException run(`$julia_cmd --check-bounds=auto --math-mode=user -e "using Hardened"`)
    @test_throws ProcessFailedException run(`$julia_cmd --check-bounds=no --math-mode=user -e "using Hardened"`)
    @test_throws ProcessFailedException run(`$julia_cmd --check-bounds=yes --math-mode=user -e "using Hardened"`)
    @test_throws ProcessFailedException run(`$julia_cmd --check-bounds=no --math-mode=ieee -e "using Hardened"`)

    #@show run(`$hardened_cmd_ieee`)
end
