class AddDefaultValueToChoiceAttribute < ActiveRecord::Migration[6.0]
  def change
    change_column :choices, :correct, :boolean, default: false
  end
end
