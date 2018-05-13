class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :type_test
      t.string :priority
      t.string :sprint
      t.string :Status
      t.text :preconditions

      t.timestamps
    end
  end
end
