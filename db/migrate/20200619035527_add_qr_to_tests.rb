class AddQrToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :qr, :string
  end
end
