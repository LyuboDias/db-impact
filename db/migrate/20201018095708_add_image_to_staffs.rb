class AddImageToStaffs < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :image, :string
  end
end
