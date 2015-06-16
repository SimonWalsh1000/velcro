class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :abnormal
      t.integer :fibrosis
      t.integer :tbx
      t.integer :hcying
      t.integer :gg
      t.integer :ret
      t.integer :emph
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
