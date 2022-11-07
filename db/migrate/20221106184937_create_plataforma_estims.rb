class CreatePlataformaEstims < ActiveRecord::Migration[7.0]
  def change
    create_table :plataforma_estims do |t|

      t.timestamps
    end
  end
end
