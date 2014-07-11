class CreateApks < ActiveRecord::Migration
  def change
    create_table :apks do |t|
      t.string :bankname
      t.string :version
      t.string :path

      t.timestamps
    end
  end
end
