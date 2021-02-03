class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :cr_no
      t.text   :sec_law
      t.string :acc_name
      t.timestamps
    end
  end
end
