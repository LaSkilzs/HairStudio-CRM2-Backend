class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :image
      t.references :gallery_category, foreign_key: true
      t.references :gallerable, polymorphic: true

      t.timestamps
    end
  end
end
