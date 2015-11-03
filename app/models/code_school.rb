class CodeSchool < ActiveRecord::Base
  has_many :students, class_name: "User"
  has_many :projects, through: :students #projects belong to students, so we need the 'through: :student' to access code_school.projects
  #remember that classes can only belongs_to one thing. 
end
