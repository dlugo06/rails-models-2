class CreateStudentTeams < ActiveRecord::Migration
  def change
    create_table :student_teams do |t|
      t.references :student, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.string :role

      t.timestamps null: false
    end
  end
end
