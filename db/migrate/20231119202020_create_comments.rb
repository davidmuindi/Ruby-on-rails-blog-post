class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
