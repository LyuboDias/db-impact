class AddSlugToStaffs < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :slug, :string
    add_index :staffs, :slug, unique: true
  end
end
