class AddBannerPhotoUrlToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :banner_photo_url, :string
  end
end
