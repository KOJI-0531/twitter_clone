class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content
      t.boolean :del_flg, default: false

      t.timestamps
    end
  end
end
