class CreateCriticas < ActiveRecord::Migration[7.0]
  def change
    create_table :criticas do |t|
      t.text :texto
      t.boolean :critica_positiva

      t.timestamps
    end
  end
end
