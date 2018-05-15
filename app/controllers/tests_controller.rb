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
        
        if @test.save
          redirect_to tests_path, notice: "El Test fue creado correctamente"
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
          params.require(:test).permit(:title, :type, :priority, :sprint, :Status, :preconditions )
    end
end


