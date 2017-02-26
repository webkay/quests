class CreateAdventures < ActiveRecord::Migration[5.0]
  def change
    create_table :adventures do |t|
      t.integer :quest_id
      t.integer :place_id
    end
  end
end
