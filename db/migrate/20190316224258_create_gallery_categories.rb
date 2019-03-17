class CreateGalleryCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :gallery_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
