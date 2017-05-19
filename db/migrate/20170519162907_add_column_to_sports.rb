class AddColumnToSports < ActiveRecord::Migration[5.0]
  def change
      add_column :sports, :is_showing, :boolean, :default => true
  end
end
