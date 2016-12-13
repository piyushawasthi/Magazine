class CreateCategoriesarticles < ActiveRecord::Migration
  def change
    create_table :categoriesarticles do |t|
      t.integer :category_id
      t.integer :article_id

      t.timestamps
    end
  end
end
