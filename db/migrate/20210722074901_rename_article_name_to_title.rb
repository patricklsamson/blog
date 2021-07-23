class RenameArticleNameToTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :articles, :name, :title
  end
end
