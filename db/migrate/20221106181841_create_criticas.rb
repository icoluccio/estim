class CreateCriticas < ActiveRecord::Migration[7.0]
  def change
    create_table :criticas do |t|
      t.text :contenido
      t.boolean :critica_positiva
      t.belongs_to :juego

      t.timestamps
    end
  end
end
