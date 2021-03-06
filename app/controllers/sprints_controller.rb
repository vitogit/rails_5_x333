class SprintsController < ApplicationController
  def index
    @sprint = Sprint.new
    (1..3).each do |i|
      goal = @sprint.goals.build
      (1..3).each do |j|
        goal.actions.build
      end
    end
    
    sprints = Sprint.includes(goals: [:actions]).order(id: :desc)
    @sprints_history = sprints.all[1..-1] #all but first
    @current_sprint = sprints.first
  end

  def show
  end

  def create
    @sprint = Sprint.new(sprint_params)
    if @sprint.save
      flash[:success] = "Success"
    else
      flash[:danger] = @sprint.errors.full_messages
    end
    redirect_to :root
  end
  
  def complete_action
    @action = Action.find(params[:id])
    @action.completed = !@action.completed
    @action.save
     respond_to do |format|
        format.js
     end  
  end

  private

    def sprint_params
      params.require(:sprint).permit(:name, {:goals_attributes=>[:name, {:actions_attributes => [:name] }]})
    end
end
