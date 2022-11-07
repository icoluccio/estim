class CreateDescuentos < ActiveRecord::Migration[7.0]
  def change
    create_table :descuentos do |t|
      t.string :type
      t.float :multiplicador
      t.integer :descuento_fijo
      t.belongs_to :juego

      t.timestamps
    end
  end
end
