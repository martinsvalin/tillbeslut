class CreateAuthorsProposals < ActiveRecord::Migration
  def change
    create_table :authors_proposals do |t|
      t.integer :author_id
      t.integer :proposal_id
    end

    add_index :authors_proposals, :author_id
    add_index :authors_proposals, :proposal_id
  end
end
