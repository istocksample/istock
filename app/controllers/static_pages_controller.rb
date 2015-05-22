class StaticPagesController < ApplicationController
  def index
  end

  def help
  end

  def author
     @users = User.all
  end
end
