class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.belongs_to :team, index: true, foreign_key: true
      t.string :name
    end
  end
end
