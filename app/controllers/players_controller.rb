class PlayersController < ApplicationController
  before_action :set_team_player, only: [:show, :edit, :update, :destroy]
  before_action :set_team, only: [:new, :create]

  def show
  end

  def edit
  end

  def update
    @player.update(player_params)
    redirect_to team_path(@team)
  end

  def destroy
    @player.destroy
    redirect_to team_path(@team)
  end

  def new
    @player = @team.players.new
  end

  def create
    @team.players.create(player_params)
    redirect_to team_path(@team)
  end

private

  def player_params
    params.require(:player).permit(:name)
  end

  def set_team_player
    set_team
    @player = Player.find_by_id(params[:player_id])
  end

  def set_team
    @team = Team.find_by_id(params[:team_id])
  end

end