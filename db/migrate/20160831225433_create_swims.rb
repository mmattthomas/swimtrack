class CreateSwims < ActiveRecord::Migration[5.0]
  def change
    create_table :swims do |t|
      t.integer :user_id
      t.integer :distance
      t.date :swim_date
      t.integer :lengths
      t.integer :duration_minutes

      t.timestamps
    end
  end
end
