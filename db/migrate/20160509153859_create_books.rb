class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.string :image_url
      t.string :isbn

      t.timestamps null:false
    end
  end
end
