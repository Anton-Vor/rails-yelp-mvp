class ChangeIntegerToStringInReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :, :phone, :string
  end
end
