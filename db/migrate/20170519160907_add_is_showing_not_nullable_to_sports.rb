class AddIsShowingNotNullableToSports < ActiveRecord::Migration[5.0]
  def change
      add_column :sports, :is_showing, :boolean, null: true
  end
end
