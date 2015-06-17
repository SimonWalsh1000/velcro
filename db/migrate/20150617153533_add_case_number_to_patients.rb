class AddCaseNumberToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :case_number, :integer
  end
end
