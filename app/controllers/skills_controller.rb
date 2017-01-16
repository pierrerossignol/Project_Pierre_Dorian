class SkillsController < ApplicationController

  def new
    @skills = Skills.new
  end
end
