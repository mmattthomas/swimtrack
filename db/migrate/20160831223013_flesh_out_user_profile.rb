class FleshOutUserProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :birthday, :date
    add_column :users, :age, :integer
    add_column :users, :bmi, :integer 
  end
end
