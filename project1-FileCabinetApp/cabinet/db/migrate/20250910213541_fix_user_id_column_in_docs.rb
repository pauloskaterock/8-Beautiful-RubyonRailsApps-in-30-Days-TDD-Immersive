class FixUserIdColumnInDocs < ActiveRecord::Migration[8.0]
  def change
    remove_column :docs, :user_ide, :integer
    add_column :docs, :user_id, :integer
    add_foreign_key :docs, :users
  end
end
