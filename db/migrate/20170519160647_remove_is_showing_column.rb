class RemoveIsShowingColumn < ActiveRecord::Migration[5.0]
  def change
      remove_column :sports, :is_showing
  end
end
