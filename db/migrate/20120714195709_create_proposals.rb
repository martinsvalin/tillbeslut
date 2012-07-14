class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :header, null: false
      t.string :number, null: false, unique: true
      t.text :body

      t.timestamps
    end
  end
end
