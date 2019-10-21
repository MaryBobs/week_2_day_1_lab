class SportsTeam

  #attr_reader :team_name, :players, :coach
  #attr_writer :team_name, :players, :coach
  attr_accessor :team_name, :players, :coach, :points

def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
end

def add_new_player(name)
  @players << "Pete"
end

def find_player(name)
    if @players.include?(name)
      return true
    end
end

def win_or_lose(result)
  if result == "Win"
    @points += 2
  end
end

end
