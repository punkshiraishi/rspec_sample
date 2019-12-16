class AddIndexToUru < ActiveRecord::Migration[5.1]
  def change
    add_column :urus, :is_uru, :boolean, default: false, null: false
  end
end
