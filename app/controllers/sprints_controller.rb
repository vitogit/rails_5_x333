class SprintsController < ApplicationController
  def index
    @sprint = Sprint.new name: 'sprint1'
    (1..3).each do |i|
      goal = @sprint.goals.build name: "goal_#{i}"
      (1..3).each do |j|
        goal.actions.build  name: "action_#{i}_#{j}"
      end
    end
  end

  def show
  end

  def create
    puts "params___"+params.to_json
    puts "sprint_params___"+sprint_params.to_json
    @sprint = Sprint.new(sprint_params)
    puts "sprint___"+@sprint.to_json
    puts "sprint goals___"+@sprint.goals.to_json
    puts "sprint goal.actions___"+@sprint.goals.first.actions.to_json
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
