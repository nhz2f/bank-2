class AddBanknameToApks < ActiveRecord::Migration
  def change
    add_column :apks, :bankname, :string
  end
end
