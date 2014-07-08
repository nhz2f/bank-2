class CreateRankinfos < ActiveRecord::Migration
  def change
    create_table :rankinfos do |t|
      t.string :name
      t.string :version
      t.integer :score

      t.timestamps
    end
  end
end
