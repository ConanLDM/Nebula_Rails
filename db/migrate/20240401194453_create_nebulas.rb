class CreateNebulas < ActiveRecord::Migration[7.1]
  def change
    create_table :nebulas do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
