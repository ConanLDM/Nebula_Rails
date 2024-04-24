class CreateSupernovae < ActiveRecord::Migration[7.1]
  def change
    create_table :supernovae do |t|
      t.string :name, null: false
      t.text :body

      t.timestamps
    end
  end
end
