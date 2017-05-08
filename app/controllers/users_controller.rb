class UsersController < ApplicationRecord
  def index
    @users = Users.all
  end
end
