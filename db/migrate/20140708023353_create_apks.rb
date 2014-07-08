class CreateApks < ActiveRecord::Migration
  def change
    create_table :apks do |t|
      t.string :path

      t.timestamps
    end
  end
end
