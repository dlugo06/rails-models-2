class AddEmailNotNullToUser < ActiveRecord::Migration
  def up
    User.all.each do |u| #since we have a unique change, we must define an up method and a down method to undo (rollback) the migration.
      if u.email.blank? #blank? will check for nil values and empty strings
        u.email = "#{u.name}@example.com"
        u.save
      end
    end
    change_column :users, :email, :string, null: false
  end

  def down
    change_column :users, :email, :string, null: true
  end
end
