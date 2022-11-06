class CreateCriticos < ActiveRecord::Migration[7.0]
  def change
    create_table :criticos do |t|
      t.string :type
      t.boolean :actitud_positiva

      t.timestamps
    end
  end
end
