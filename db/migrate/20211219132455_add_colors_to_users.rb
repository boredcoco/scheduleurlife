class AddColorsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bg_color, :string, default: "#151828"
    add_column :users, :txt_color, :string, default: "#FFFFFF"
    add_column :users, :card_color, :string, default: "#372f2f"
  end
end
