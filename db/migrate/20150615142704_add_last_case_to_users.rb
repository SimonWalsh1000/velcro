class AddLastCaseToUsers < ActiveRecord::Migration
  def up
    add_column :users, :last_case, :integer
  end

  def down
    remove_column :users, :last_case, :integer
  end

end

