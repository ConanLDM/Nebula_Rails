class CreateAstroImages < ActiveRecord::Migration[7.1]
  def change
    create_table :astro_images do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
