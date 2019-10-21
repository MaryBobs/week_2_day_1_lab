require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

def test_get_team_name
  team_name = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy")
  assert_equal("Ducks United", team_name.team_name)
end

def test_get_players
  players = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy")
  assert_equal(["Fred", "Joe"], players.players)
end

def test_get_coach
  coach = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy")
  assert_equal("Sandy", coach.coach)
end

def test_update_coach
  coach = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy")
  coach.coach = "Eugene"
  assert_equal("Eugene", coach.coach)
end

















end
