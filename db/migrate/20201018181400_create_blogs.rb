class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :header
      t.string :sub_header
      t.string :author
      t.string :author_info
      t.string :hashtags
      t.string :image

      t.timestamps
    end
  end
end
