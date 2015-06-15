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
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :patients, :users
  end
end
