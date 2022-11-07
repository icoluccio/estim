class CreateJuegos < ActiveRecord::Migration[7.0]
  def change
    create_table :juegos do |t|
      t.integer :precio
      t.json :caracteristicas

      t.timestamps
    end
  end
end
