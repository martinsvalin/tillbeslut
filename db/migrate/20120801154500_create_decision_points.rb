class CreateDecisionPoints < ActiveRecord::Migration
  def change
    create_table :decision_points do |t|
      t.string :text
      t.integer :proposal_id

      t.timestamps
    end

    add_index :decision_points, :proposal_id
  end
end
