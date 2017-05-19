class Changeishsowingnulltofalse < ActiveRecord::Migration[5.0]
  def change
      change_column :sports, :is_showing, :string
  end
end
