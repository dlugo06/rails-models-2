class Team < ActiveRecord::Base
  has_many :student_teams
  has_many :students, through: :student_teams
end