class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :id_no
      t.text :name
      t.timestamps
    end
  end
end
