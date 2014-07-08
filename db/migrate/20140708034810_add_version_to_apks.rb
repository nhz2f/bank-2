class AddVersionToApks < ActiveRecord::Migration
  def change
    add_column :apks, :version, :string
  end
end
