class AddPhotoToBarbecues < ActiveRecord::Migration[5.2]
  def change
    add_column :barbecues, :photo, :string
  end
end
