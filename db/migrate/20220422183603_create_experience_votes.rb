class CreateExperienceVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :experience_votes do |t|
      t.integer :experience_id
      t.integer :vote_cd

      t.timestamps
    end
  end
end
