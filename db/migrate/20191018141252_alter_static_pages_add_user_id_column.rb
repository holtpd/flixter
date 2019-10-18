class AlterStaticPagesAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :user_id, :integer
    add_index :models, :user_id
  end
end
