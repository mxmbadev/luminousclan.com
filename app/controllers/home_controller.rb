class HomeController < ApplicationController

  def index
    @users = User.order("created_at asc")
  end

end
