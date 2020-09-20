class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :f_name
      t.string :l_name
      t.string :job_title
      t.text :bio
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
