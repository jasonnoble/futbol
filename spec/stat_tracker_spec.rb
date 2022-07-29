require 'spec_helper'
require './lib/stat_tracker'

RSpec.describe StatTracker do
  let(:locations) {
    {
      games: './spec/data/games.csv',
      teams: './spec/data/teams.csv',
      game_teams: './spec/data/game_teams.csv'
    }
  }
  let(:stat_tracker) { described_class.from_csv(locations) }

  describe '.from_csv(locations)' do
    it 'creates a StatTracker' do
      expect(stat_tracker).to be_a(described_class)
    end
  end
  describe 'Game Statistics' do
    describe '#highest_total_score' do
      it 'calculates the highest sum of the winning and losing teams scores (integer)'
    end
    describe '#lowest_total_score' do
      it 'calculates the lowest sum of the winning and losing teams scores (integer)'
    end
    describe '#percentage_home_wins' do
      it 'calculates the percentage of games that a home team has won rounded to the nearest 100th (Float)'
    end
    describe '#percentage_visitor_wins' do
      it 'calculates the percentage of games that a visitor team has won rounded to the nearest 100th (Float)'
    end
    describe '#percentage_ties' do
      it 'calculates the percentage of games that has resulted in a tie rounded to the nearest 100th (Float)'
    end
    describe '#count_of_games_by_season' do
      it 'calculates a hash with season names as keys and counts of games as values (Hash)'
    end
    describe '#average_goals_per_game' do
      it 'calculates average number of goals scored in a game across all seasons rounded to the nearest 100th (Float)'
    end
    describe '#average_goals_per_season' do
      it 'calculates a hash with season names as keys and float representing the average number of goals in that season (Hash)'
    end
  end

  describe 'League Statistics' do
    describe '#count_of_teams' do
      it 'calculates the number of teams in the data (Integer)'
    end
    describe '#best_offense' do
      it 'calculates the name of the team with the highest average number of goals scored per game (String)'
    end
    describe '#worst_offense' do
      it 'calculates the name of the team with the lowest average number of goals scored per game (String)'
    end
    describe '#highest_scoring_visitor' do
      it 'calculates the name of the team with the highest average score per game while away (String)'
    end
    describe '#highest_scoring_home_team' do
      it 'calculates the name of the team with the highest average score per game while home (String)'
    end
    describe '#lowest_scoring_visitor' do
      it 'calculates the name of the team with the lowest average score per game while away (String)'
    end
    describe '#lowest_scoring_home_team' do
      it 'calculates the name of the team with the lowest average score per game while home (String)'
    end
  end
  describe 'Season Statistics' do
    describe '#winningest_coach(season_id)' do
      it 'calculates the name of the coach with the best win percentage for the season (String)'
    end
    describe '#worst_coach(season_id)' do
      it 'calculates the name of the coach with the worst win percentage for the season (String)'
    end
    describe '#most_accurate_team(season_id)' do
      it 'calculates the name of the team with the best ratio of shots to goals for the season (String)'
    end
    describe '#least_accurate_team(season_id)' do
      it 'calculates the name of the team with the worst ratio of shots to goals for the season (String)'
    end
    describe '#most_tackles(season_id)' do
      it 'calculates the name of the team with the most tackles in the season (String)'
    end
    describe '#fewest_tackles(season_id)' do
      it 'calculates the name of the team with the fewest tackles in the season (String)'
    end
  end

  describe 'Team Statistics' do
    describe '#team_info(team_id)' do
      it 'calculates a hash with team_id, franchise_id, team_name, abbreviation and link (Hash)'
    end
    describe '#best_season(team_id)' do
      it 'calculates the season with the highest win percentage for a team (String)'
    end
    describe '#worst_season(team_id)' do
      it 'calculates the season with the lowest win percentage for a team (String)'
    end
    describe '#average_win_percentage(team_id)' do
      it 'calculates the average win percentage of all games for a team (Float)'
    end
    describe '#most_goals_scored(team_id)' do
      it 'calculates the highest number of goals a particular team has scored in a single game (Integer)'
    end
    describe '#fewest_goals_scored(team_id)' do
      it 'calculates the lowest number of goals a particular team has scored in a single game (Integer)'
    end
    describe '#favorite_opponent(team_id)' do
      it 'calculates the name of the opponent that has the lowest win percentage against the given team (String)'
    end
    describe '#rival(team_id)' do
      it 'calculates the name of the opponent that has the highest win percentage against the given team (String)'
    end
  end
end
