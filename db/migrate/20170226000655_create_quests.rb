class CreateQuests < ActiveRecord::Migration[5.0]
  def change
    create_table :quests do |t|
      t.text :description

      t.timestamps
    end
  end
end
