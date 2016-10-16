class SprintsController < ApplicationController
  def index
    @sprint = Sprint.new
    @goals = [Goal.new(name:'goal1')]
    @actions = [Action.new(name:'ac1'), Action.new(name:'ac2'), Action.new(name:'ac3')]
  end
end
