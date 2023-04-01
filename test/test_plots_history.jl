# Run tests on plotting functions for historical data API

@testset verbose = true "Plotting with default selection" begin

    @testset "plot_hist_temp" begin
        plt = plot_hist_temp("Veldhoven",
                              start_date = "2022-01-01",
                              end_date = "2022-12-21")
        @test sizeof(plt) > 0
    end

    @testset "plot_hist_rain" begin
        plt = plot_hist_rain("Haldwani",
                              start_date = "2022-01-01",
                              end_date = "2022-12-21")
        @test sizeof(plt) > 0
    end

    @testset "plot_hist_snow" begin
        plt = plot_hist_snow("Tromso",
                              start_date = "2016-01-01",
                              end_date = "2016-12-21")
        @test sizeof(plt) > 0
    end

end

@testset verbose = true "Plotting with multiple matches" begin

    @testset "plot_hist_temp" begin
        plt = plot_hist_temp("Madrid",
                              2,
                              start_date = "2022-01-01",
                              end_date = "2022-12-21")
        @test sizeof(plt) > 0

        plt = plot_hist_temp("Madrid",
                              4,
                              start_date = "2022-01-01",
                              end_date = "2022-12-21")
        @test sizeof(plt) > 0
    end

    @testset "plot_hist_rain" begin
        plt = plot_hist_rain("Madrid",
                              2,
                              start_date = "2020-01-01",
                              end_date = "2020-12-21")
        @test sizeof(plt) > 0

        plt = plot_hist_rain("Madrid",
                              4,
                              start_date = "2018-01-01",
                              end_date = "2018-12-21")
        @test sizeof(plt) > 0
    end

    @testset "plot_hist_snow" begin
        plt = plot_hist_snow("Madrid",
                              2,
                              start_date = "2020-01-01",
                              end_date = "2020-12-21")
        @test sizeof(plt) > 0

        plt = plot_hist_snow("Madrid",
                              3,
                              start_date = "2018-01-01",
                              end_date = "2018-12-21")
        @test sizeof(plt) > 0
    end

end

@testset verbose = true "Plotting with lat/long input" begin

    @testset "plot_hist_temp" begin
        # Denver
        plt = plot_hist_temp(lat = 39.7392,
                             long = -104.985,
                             start_date = "2022-01-01",
                             end_date = "2022-12-21")
        @test sizeof(plt) > 0
    end

    @testset "plot_hist_rain" begin
        # Delhi
        plt = plot_hist_rain(lat = 28.6519,
                             long = 77.2315,
                             start_date = "2019-01-01",
                             end_date = "2019-12-21")
        @test sizeof(plt) > 0
    end

    @testset "plot_hist_snow" begin
        # Oslo
        plt = plot_hist_snow(lat = 59.9127,
                             long = 10.7461,
                             start_date = "2019-01-01",
                             end_date = "2019-12-21")
        @test sizeof(plt) > 0
    end

end