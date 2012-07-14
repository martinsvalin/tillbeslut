class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :header, null: false
      t.string :number, null: false
      t.text :body

      t.timestamps
    end

    add_index :proposals, :header, :unique => false
    add_index :proposals, :number, :unique => true
  end
end
