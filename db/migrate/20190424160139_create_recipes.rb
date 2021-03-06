class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :instruction
      t.text :ingredients

      t.timestamps
    end
  end
end
