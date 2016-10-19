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
      flash[:error] = "Error"
    end
    redirect_to :root
  end

  private

    def sprint_params
      params.require(:sprint).permit(:name, {:goals_attributes=>[:name, {:actions_attributes => [:name] }]})
    end
end
