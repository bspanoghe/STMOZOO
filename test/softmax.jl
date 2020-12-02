@testset "Softmax" begin
    using STMOZOO.Softmax

    x = [1.5, 0.1, -1.2]
    @testset "softmax" begin
        qx = softmax(x)

        @test qx isa Vector
        @test all(qx .≥ 0.0)
        @test sum(qx) ≈ 1.0
        @test qx[1] > qx[2]

        @test maximum(softmax(x, κ=20)) ≈ 1.0
    end

end