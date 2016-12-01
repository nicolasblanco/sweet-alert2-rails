class UsersController < ApplicationController
  def destroy
    redirect_to root_path, notice: 'User deleted!'
  end
end
