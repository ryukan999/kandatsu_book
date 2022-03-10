class RemoveCommentFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :comment, :string
  end
end
