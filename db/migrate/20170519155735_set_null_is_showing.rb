class SetNullIsShowing < ActiveRecord::Migration[5.0]
  def change
      change_column :sports, :is_showing, :boolean, :null => true
  end
end
