class CreateUserChallenges < ActiveRecord::Migration
  def change
    create_table :user_challenges do |t|
       t.belongs_to :user, index: true
       t.belongs_to :challenge, index: true
       t.timestamps null: false
    end
  end
end
