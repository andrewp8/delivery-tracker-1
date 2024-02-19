class UsersController < ApplicationController
  def index
    @list_of_waiting_deliveries = Delivery.where(user_id:current_user.id, arrived:"false")
    @list_of_arrived_deliveries = Delivery.where(user_id:current_user.id, arrived:"true")
    render "users/index"
  end
end
