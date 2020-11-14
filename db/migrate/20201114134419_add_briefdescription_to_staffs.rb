class AddBriefdescriptionToStaffs < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :briefdescription, :text
  end
end
