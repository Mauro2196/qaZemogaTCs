class TestsController < ApplicationController
    before_action :authenticate_user!

    def index
        @tests = Test.all
    end
      
    def new
        @test = Test.new
    end
      
    def create
        @test = Test.new(test_params)
        @test.user = current_user
        @test.open = true
        if @test.save
          redirect_to test_path, notice: "El Test fue creado correctamente"
        else
          render :new
        end  
    end
      
    def show
        @test = Test.find(params[:id])
        @steps = @test.steps.new
    end
      
    private
    def test_params
          params.require(:test).permit(:title, :type, :priority, :sprint, :status, :preconditions )
    end
end


