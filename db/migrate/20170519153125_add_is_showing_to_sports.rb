class AddIsShowingToSports < ActiveRecord::Migration[5.0]
  def change
      add_column :sports, :is_showing, :boolean
  end
end
