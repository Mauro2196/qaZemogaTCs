class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true
      t.text :step
      t.text :expected_step

      t.timestamps
    end
  end
end
