class AddPhotoToUserSe < ActiveRecord::Migration
  def change
    add_attachment :user_ses, :image
  end
end
