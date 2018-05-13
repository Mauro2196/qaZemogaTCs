class StepsController < ApplicationController

before_action :authenticate_user!
  
  def create
    @step = Step.new(step_params)
    @step.user = current_user
    @step.test = Test.first
    if @step.save
      redirect_to test_path(id: Test.first.id), notice: "El step fue creado correctamente"
    end    
  end
  
  private
    def step_params
      params.require(:step).permit(:issue_id, :step, :expected_step)
    end
end
