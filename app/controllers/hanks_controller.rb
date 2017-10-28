class HanksController < ApplicationController
  def index
    @hanks=Hank.all
  end
end
