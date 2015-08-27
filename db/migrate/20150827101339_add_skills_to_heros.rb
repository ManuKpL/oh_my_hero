class AddSkillsToHeros < ActiveRecord::Migration
  def change
    add_column :heros, :skill, :string
  end
end
