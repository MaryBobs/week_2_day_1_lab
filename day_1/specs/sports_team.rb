require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

def test_get_team_name
  team_name = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
  assert_equal("Ducks United", team_name.team_name)
end

def test_get_players
  players = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
  assert_equal(["Fred", "Joe"], players.players)
end

def test_get_coach
  coach = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
  assert_equal("Sandy", coach.coach)
end

def test_update_coach
  coach = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
  coach.coach = "Eugene"
  assert_equal("Eugene", coach.coach)
end

def test_add_new_player
    players = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
    players.add_new_player("Pete")
    assert_equal(3, players.players.count)
end

def test_find_player
  players = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
  players.find_player("Fred")
  assert_equal('Fred', players.players[0])
end

def test_win_or_lose
  points = SportsTeam.new("Ducks United", ["Fred", "Joe"], "Sandy", 0)
  points.win_or_lose("Win")
  assert_equal(3, points.points)
end
















end
