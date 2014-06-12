class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :name
      t.string :category
    end
  end
end
