class Changeishsowingnulltotrue < ActiveRecord::Migration[5.0]
  def change
      change_column :sports, :is_showing, :string, :null => true
  end
end
