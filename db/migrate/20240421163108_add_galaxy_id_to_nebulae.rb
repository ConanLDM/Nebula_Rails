class AddGalaxyIdToNebulae < ActiveRecord::Migration[7.1]
  def change
    add_reference :nebulae, :galaxy, null: false, foreign_key: true
  end
end
