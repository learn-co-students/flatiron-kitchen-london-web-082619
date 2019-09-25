class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
    end

    create_table :ingredients do |t|
      t.string :name
    end

    create_join_table :recipes, :ingredients do |t|
      t.index :recipe_id
      t.index :ingredient_id
    end
  end
end
