class CreateRulefiles < ActiveRecord::Migration
  def change
    create_table :rulefiles do |t|
      t.string :name
      t.string :version
      t.string :path

      t.timestamps
    end
  end
end
