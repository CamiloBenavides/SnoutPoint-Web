class AddUserToUserSe < ActiveRecord::Migration
  def change
    add_reference :user_ses, :user, index: true
  end
end
