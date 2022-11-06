class CreatePais < ActiveRecord::Migration[7.0]
  def change
    create_table :pais do |t|
      t.integer :cotizacion
      t.json :caracteristicas_prohibidas

      t.timestamps
    end
  end
end
