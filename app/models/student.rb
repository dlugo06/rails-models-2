class Student < ActiveRecord::Base
  has_many :student_teams
  has_many :teams, through: :student_teams
end
