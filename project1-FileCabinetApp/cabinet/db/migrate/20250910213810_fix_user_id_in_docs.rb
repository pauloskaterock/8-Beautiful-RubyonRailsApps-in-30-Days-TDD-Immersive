class FixUserIdInDocs < ActiveRecord::Migration[8.0]
  def change
    remove_column :docs, :user_ide, :integer   # Remove o campo com nome errado
    # add_reference :docs, :user, foreign_key: true  # Adiciona corretamente o user_id
  end
end
