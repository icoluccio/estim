class CreateJuegoPagos < ActiveRecord::Migration[7.0]
  def change
    create_table :juego_pagos do |t|
      t.belongs_to :juego, null: false, foreign_key: true
      t.belongs_to :critico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
