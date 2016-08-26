class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.float :distance
      t.integer :number_of_days
      t.timestamps null: false
    end
  end
end
