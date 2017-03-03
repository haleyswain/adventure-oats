class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :flavor, :string
      t.column :size, :string
      t.column :user_id, :integer
      t.column :description, :string
      t.column :price, :integer
      t.column :title, :string
      t.column :diet, :string
    end
  end
end
