class UsersController < ApplicationController
  # POST /users
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def user_params
    # whitelist params
    params.permit(:fName, :lName, :phone, :group_id, :home_id, :work_id)
  end
end
