require 'test_helper'

class TeamsCrudTest < ActionDispatch::IntegrationTest

  def test_teams_index
    Team.create!(name: "Cubs")
    page.visit teams_path
    assert_equal page.current_path, '/teams'
    assert_match "Cubs", page.body
  end

  def test_teams_show
    team = Team.create!(name: "Cubs")
    page.visit team_path(team)
    assert_equal page.current_path, "/teams/#{team.id}"
    assert_match "Cubs", page.body
  end

  def test_teams_new_create
    page.visit new_team_path
    assert_equal page.current_path, "/teams/new"
    fill_in('Name', :with => 'Yankees')
    click_button('Create Team')
    assert_match "Yankees", page.body
  end

  def test_teams_edit_update
    team = Team.create!(name: "Bears")
    page.visit edit_team_path(team)
    fill_in('Name', :with => 'Black Bears')
    click_button('Update Team')
    assert_match "Black Bears", page.body
  end

  def test_teams_destroy
    team = Team.create!(name: "Panthers")
    page.visit teams_path
    click_on("Panthers")
    click_on("delete")
    assert_equal page.current_path, root_path
    assert !page.has_content?("Panthers")
  end

end