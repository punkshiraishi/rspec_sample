class CreateUrus < ActiveRecord::Migration[5.1]
  def change
    create_table :urus do |t|
      t.integer :year

      t.timestamps
    end
  end
end
