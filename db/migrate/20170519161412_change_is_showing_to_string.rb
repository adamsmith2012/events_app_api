class ChangeIsShowingToString < ActiveRecord::Migration[5.0]
  def change
      change_column :sports, :is_showing, :string, :default => "true"
  end
end
