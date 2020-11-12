class AddLinkToStaffs < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :link, :string
  end
end
