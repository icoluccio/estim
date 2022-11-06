class CreateEstims < ActiveRecord::Migration[7.0]
  def change
    create_table :estims do |t|

      t.timestamps
    end
  end
end
