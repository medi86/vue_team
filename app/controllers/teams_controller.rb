class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    Team.create(team_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team.destroy
    redirect_to root_path
  end

private

  def team_params
    params.require(:team).permit(:name)
  end

  def set_team
    @team = Team.find_by_id(params[:id])
  end

end