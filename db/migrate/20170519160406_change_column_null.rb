class ChangeColumnNull < ActiveRecord::Migration[5.0]
  def change
      change_column_null :sports, :is_showing, true
  end
end
