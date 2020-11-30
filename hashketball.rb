# Write your code here!
require "pry"
require './hashketball.rb'

  def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

# def player_by_number(number)
#   game_hash.each do |team, details|
#     details[:player].each do |player_name, player_details|
#       if number == player_details[:number]
#         return player_name
#       end
#     end 
#   end
# end

# def num_points_scored(player)
#   game_hash.each do |team, details|
#     details[:players].each do |player_name, player_details|
#       if player_name == player
#         return player_details[:points]
#       end
#     end
#   end
# end

# def shoe_size(player)
#   game_hash.each do |team, details|
#     details[:players].each do |player_name, player_details|
#       if player_name == player
#         return player_details[:shoe]
#       end
#     end
#   end
# end

# def team_colors(team_name)
#   game_hash.each do |team, details|
#     if details[:team_name] == team_name
#       return details[:colors]
#     end
#   end
# end

# def team_names
#   team_array = []
#   game_hash.each do |team, details|
#     team_array << details[:team_name]
#   end
#   team_array
# end

# def player_numbers(team_name)
#   player_nums = []
#   game_hash.each do |team, details|
#     if details[:team_name] == team_name
#       details[:players].each do |player_name, player_details|
#         player_nums << player_details[:number]
#       end
#     end
#   end
#   player_nums
# end

# def player_stats(name)
#   game_hash.each do |team, details|
#     details[:players].each do |player_name, player_details|
#       if name == player_name
#         return player_details
#       end
#     end
#   end
# end


# def big_shoe_rebounds
#   largest_size = 0
#   game_hash.each do |team, details|
#     details[:players].each do |player_name, player_details|
#       if player_details[:shoe] > largest_size
#         largest_size = player_details[:shoe]
#         return player_details[:rebounds]
#       end 
#     end 
#   end 
# end

def num_points_scored(player)
  game_hash.each do |k, v| 
    v[:players].each do |k, v|
      if k == player
        puts v[:points]
      end
    end
  end
end
